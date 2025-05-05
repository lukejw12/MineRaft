# Water Purifier Ticking Function - Optimized for Multiple Purifiers

# Store this purifier's position for targeting
scoreboard players set #temp purifier_x 0
scoreboard players set #temp purifier_y 0
scoreboard players set #temp purifier_z 0
execute store result score #temp purifier_x run data get entity @s Pos[0] 100
execute store result score #temp purifier_y run data get entity @s Pos[1] 100
execute store result score #temp purifier_z run data get entity @s Pos[2] 100

# Check if base block is still valid
execute unless block ~ ~-1 ~ #raft_materials run kill @e[type=item_display,distance=..0.5,sort=nearest,limit=1,tag=water_purifier_facade]
execute unless block ~ ~-1 ~ #raft_materials run kill @e[type=interaction,distance=..0.5,sort=nearest,limit=1,tag=water_purifier_interact]
execute unless block ~ ~-1 ~ #raft_materials run setblock ~ ~ ~ air
execute unless block ~ ~-1 ~ #raft_materials run summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:vex_spawn_egg",count:1,components:{"minecraft:custom_data":{water_purifier_item:1b},"minecraft:entity_data":{id:"minecraft:marker",Tags:["water_purifier"]},"minecraft:item_model":"minecraft:water_purifier","minecraft:item_name":{"translate":"item.minecraft.water_purifier","fallback":"Water Purifier"},"minecraft:rarity":"uncommon"}}}
execute unless block ~ ~-1 ~ #raft_materials run kill @s

# Get relevant facade and interaction entities for this specific purifier
tag @e[type=item_display,distance=..0.5,sort=nearest,limit=1,tag=water_purifier_facade] add this_purifier_facade
tag @e[type=interaction,distance=..0.5,sort=nearest,limit=1,tag=water_purifier_interact] add this_purifier_interact

# Process interaction for adding planks to empty purifier
execute as @e[tag=this_purifier_interact] if data entity @s interaction on target if entity @s[nbt={SelectedItem:{id:"minecraft:spruce_planks"}}] unless entity @e[tag=water_purifier_active,x=0,y=0,z=0,distance=..0.01,tag=has_planks] unless entity @e[tag=water_purifier_active,x=0,y=0,z=0,distance=..0.01,tag=processing] at @s run tag @e[type=marker,sort=nearest,limit=1,tag=water_purifier_active] add has_planks

execute as @e[tag=this_purifier_interact] if data entity @s interaction on target if entity @s[nbt={SelectedItem:{id:"minecraft:spruce_planks"}}] at @s if entity @e[tag=water_purifier_active,sort=nearest,limit=1,tag=has_planks,tag=!ready,tag=!processing] run item modify entity @e[tag=this_purifier_facade,limit=1] contents {function:"set_components",components:{"minecraft:item_model":"minecraft:water_purifier_planks"}}

execute as @e[tag=this_purifier_interact] if data entity @s interaction on target if entity @s[nbt={SelectedItem:{id:"minecraft:spruce_planks"}}] at @s if entity @e[tag=water_purifier_active,sort=nearest,limit=1,tag=has_planks,tag=!ready,tag=!processing] run clear @s minecraft:spruce_planks 1

# Process interaction for adding water bottle to purifier with planks
execute as @e[tag=this_purifier_interact] if data entity @s interaction on target if items entity @s weapon.mainhand minecraft:potion[minecraft:potion_contents={potion:"minecraft:water"}] at @s if entity @e[tag=water_purifier_active,sort=nearest,limit=1,tag=has_planks,tag=!processing] run tag @e[tag=water_purifier_active,sort=nearest,limit=1] add processing

execute as @e[tag=this_purifier_interact] if data entity @s interaction on target if items entity @s weapon.mainhand minecraft:potion[minecraft:potion_contents={potion:"minecraft:water"}] at @s if entity @e[tag=water_purifier_active,sort=nearest,limit=1,tag=has_planks,tag=processing,tag=!ready] run item modify entity @e[tag=this_purifier_facade,limit=1] contents {function:"set_components",components:{"minecraft:item_model":"minecraft:water_purifier_filled"}}

execute as @e[tag=this_purifier_interact] if data entity @s interaction on target if items entity @s weapon.mainhand minecraft:potion[minecraft:potion_contents={potion:"minecraft:water"}] at @s if entity @e[tag=water_purifier_active,sort=nearest,limit=1,tag=has_planks,tag=processing,tag=!ready] run clear @s minecraft:potion[minecraft:potion_contents={potion:"minecraft:water"}] 1

# Processing timer - specific to this purifier only
execute if entity @s[tag=processing,tag=!ready] run scoreboard players add @s purifier_timer 1

# Change model when processing is done
execute if entity @s[tag=processing,scores={purifier_timer=400}] run item modify entity @e[tag=this_purifier_facade,limit=1] contents {function:"set_components",components:{"minecraft:item_model":"minecraft:water_purifier_purified"}}
execute if entity @s[tag=processing,scores={purifier_timer=400}] run tag @s add ready

# Show particles when ready
execute if entity @s[tag=processing,tag=ready] run particle minecraft:smoke ~ ~1 ~ 0.1 0.1 0.1 0.01 5

# Handle collecting water with glass bottle
execute as @e[tag=this_purifier_interact] if data entity @s interaction on target if entity @s[nbt={SelectedItem:{id:"minecraft:glass_bottle"}}] run tag @e[tag=this_purifier_interact] add collect_water

execute as @e[tag=this_purifier_interact,tag=collect_water] at @s if entity @e[tag=water_purifier_active,sort=nearest,limit=1,tag=processing,scores={purifier_timer=400..}] on target run clear @s minecraft:glass_bottle 1

execute as @e[tag=this_purifier_interact,tag=collect_water] at @s if entity @e[tag=water_purifier_active,sort=nearest,limit=1,tag=processing,scores={purifier_timer=400..}] on target run give @s potion[item_name={"bold":false,"italic":false,"text":"Purified Water"},rarity="uncommon",custom_data={pure_water:1b},custom_name={"color":"aqua","italic":false,"text":"Purified Water"},max_stack_size=8] 1

# Change the model back to empty
execute as @e[tag=this_purifier_interact,tag=collect_water] at @s if entity @e[tag=water_purifier_active,sort=nearest,limit=1,tag=processing,scores={purifier_timer=400..}] run item modify entity @e[tag=this_purifier_facade,limit=1] contents {function:"set_components",components:{"minecraft:item_model":"minecraft:water_purifier_empty"}}

# Reset the timer but preserve the marker
execute as @e[tag=this_purifier_interact,tag=collect_water] at @s if entity @e[tag=water_purifier_active,sort=nearest,limit=1,tag=processing,scores={purifier_timer=400..}] run scoreboard players set @e[tag=water_purifier_active,sort=nearest,limit=1] purifier_timer 0

# Remove the processing tag, but keep other important tags
execute as @e[tag=this_purifier_interact,tag=collect_water] at @s if entity @e[tag=water_purifier_active,sort=nearest,limit=1,tag=processing,scores={purifier_timer=400..}] run tag @e[tag=water_purifier_active,sort=nearest,limit=1] remove processing

# Remove temporary tags
execute as @e[tag=this_purifier_interact,tag=collect_water] run tag @s remove collect_water
tag @e[tag=this_purifier_facade] remove this_purifier_facade
tag @e[tag=this_purifier_interact] remove this_purifier_interact

# Clear interaction data
execute as @e[type=minecraft:interaction,tag=water_purifier_interact,distance=..0.5] if data entity @s interaction run data remove entity @s interaction

# Add extra safety check to ensure the marker doesn't get deleted
execute if entity @s[tag=water_purifier_active] run data modify entity @s Age set value 0