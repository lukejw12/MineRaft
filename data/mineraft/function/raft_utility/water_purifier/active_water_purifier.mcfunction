scoreboard players set #current_x purifier_x 0
scoreboard players set #current_y purifier_y 0
scoreboard players set #current_z purifier_z 0
execute store result score #current_x purifier_x run data get entity @s Pos[0] 100
execute store result score #current_y purifier_y run data get entity @s Pos[1] 100
execute store result score #current_z purifier_z run data get entity @s Pos[2] 100
execute unless block ~ ~-1 ~ #raft_materials run kill @e[type=item_display,distance=..0.5,sort=nearest,limit=1,tag=water_purifier_facade]
execute unless block ~ ~-1 ~ #raft_materials run kill @e[type=interaction,distance=..0.5,sort=nearest,limit=1,tag=water_purifier_interact]
execute unless block ~ ~-1 ~ #raft_materials run setblock ~ ~ ~ air
execute unless block ~ ~-1 ~ #raft_materials run summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:vex_spawn_egg",count:1,components:{"minecraft:custom_data":{water_purifier_item:1b},"minecraft:entity_data":{id:"minecraft:marker",Tags:["water_purifier"]},"minecraft:item_model":"minecraft:water_purifier","minecraft:item_name":{"translate":"item.minecraft.water_purifier","fallback":"Water Purifier"},"minecraft:rarity":"uncommon"}}}
execute unless block ~ ~-1 ~ #raft_materials run kill @s[type=marker,tag=water_purifier_active]

execute unless block ~ ~ ~ barrier run kill @e[type=item_display,distance=..0.5,sort=nearest,limit=1,tag=water_purifier_facade]
execute unless block ~ ~ ~ barrier run kill @e[type=interaction,distance=..0.5,sort=nearest,limit=1,tag=water_purifier_interact]
execute unless block ~ ~ ~ barrier run summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:vex_spawn_egg",count:1,components:{"minecraft:custom_data":{water_purifier_item:1b},"minecraft:entity_data":{id:"minecraft:marker",Tags:["water_purifier"]},"minecraft:item_model":"minecraft:water_purifier","minecraft:item_name":{"translate":"item.minecraft.water_purifier","fallback":"Water Purifier"},"minecraft:rarity":"uncommon"}}}
execute unless block ~ ~ ~ barrier run kill @s[type=marker,tag=water_purifier_active]

tag @e[type=item_display,distance=..0.5,sort=nearest,limit=1,tag=water_purifier_facade] add this_facade
tag @e[type=interaction,distance=..0.5,sort=nearest,limit=1,tag=water_purifier_interact] add this_interact

execute as @e[tag=this_facade] if items entity @s contents *[minecraft:item_model="minecraft:water_purifier_filled"] run tag @e[type=marker,distance=..0.5,tag=water_purifier_active,limit=1] add processing
execute as @e[tag=this_facade] if items entity @s contents *[minecraft:item_model="minecraft:water_purifier_planks"] run tag @e[type=marker,distance=..0.5,tag=water_purifier_active,limit=1] add has_planks
execute as @e[tag=this_facade] if items entity @s contents *[minecraft:item_model="minecraft:water_purifier_filled"] run tag @e[type=marker,distance=..0.5,tag=water_purifier_active,limit=1] add has_planks
execute as @e[tag=this_facade] if items entity @s contents *[minecraft:item_model="minecraft:water_purifier_purified"] run tag @e[type=marker,distance=..0.5,tag=water_purifier_active,limit=1] add has_planks

execute as @e[tag=this_interact] if data entity @s interaction run tag @s add has_interaction
execute as @e[tag=has_interaction] at @s on target if entity @s[nbt={SelectedItem:{id:"minecraft:spruce_planks"}}] run tag @e[tag=has_interaction,limit=1,sort=nearest] add planks_click

execute as @e[tag=planks_click] at @s unless entity @e[type=marker,distance=..0.5,tag=water_purifier_active,tag=has_planks] run tag @e[type=marker,distance=..0.5,tag=water_purifier_active,limit=1] add has_planks
execute as @e[tag=planks_click] at @s unless entity @e[type=marker,distance=..0.5,tag=water_purifier_active,tag=processing] if entity @e[type=marker,distance=..0.5,tag=water_purifier_active,tag=has_planks,tag=!ready] run item modify entity @e[tag=this_facade,limit=1] contents {function:"set_components",components:{"minecraft:item_model":"minecraft:water_purifier_planks"}}
execute as @e[tag=planks_click] at @s unless entity @e[type=marker,distance=..0.5,tag=water_purifier_active,tag=processing] if entity @e[type=marker,distance=..0.5,tag=water_purifier_active,tag=has_planks,tag=!ready] on target run clear @s minecraft:spruce_planks 1

execute as @e[tag=has_interaction] at @s on target if items entity @s weapon.mainhand minecraft:potion[minecraft:potion_contents={potion:"minecraft:water"}] run tag @e[tag=has_interaction,limit=1,sort=nearest] add water_click

execute as @e[tag=water_click] at @s if entity @e[type=marker,distance=..0.5,tag=water_purifier_active,tag=has_planks,tag=!processing] run tag @e[type=marker,distance=..0.5,tag=water_purifier_active,limit=1] add processing
execute as @e[tag=water_click] at @s if entity @e[type=marker,distance=..0.5,tag=water_purifier_active,tag=has_planks,tag=processing,tag=!ready] run item modify entity @e[tag=this_facade,limit=1] contents {function:"set_components",components:{"minecraft:item_model":"minecraft:water_purifier_filled"}}
execute as @e[tag=water_click] at @s if entity @e[type=marker,distance=..0.5,tag=water_purifier_active,tag=has_planks,tag=processing,tag=!ready] on target run clear @s minecraft:potion[minecraft:potion_contents={potion:"minecraft:water"}] 1

execute if entity @s[tag=processing,tag=!ready] run scoreboard players add @s purifier_timer 1
execute if entity @s[tag=processing,scores={purifier_timer=801..}] run scoreboard players set @s purifier_timer 800

execute if entity @s[tag=processing,scores={purifier_timer=800}] run item modify entity @e[tag=this_facade,limit=1] contents {function:"set_components",components:{"minecraft:item_model":"minecraft:water_purifier_purified"}}
execute if entity @s[tag=processing,scores={purifier_timer=800}] run tag @s add ready

execute if entity @s[tag=processing,tag=!ready] at @s run particle minecraft:flame ~ ~0.4 ~ 0 0 0 0 1

execute as @e[tag=has_interaction] at @s on target if entity @s[nbt={SelectedItem:{id:"minecraft:glass_bottle"}}] run tag @e[tag=has_interaction,limit=1,sort=nearest] add bottle_click

execute as @e[tag=bottle_click] at @s if entity @e[type=marker,distance=..0.5,tag=water_purifier_active,tag=ready] run function mineraft:raft_utility/water_purifier/collect_water

tag @e[tag=has_interaction] remove has_interaction
tag @e[tag=water_click] remove water_click
tag @e[tag=planks_click] remove planks_click
tag @e[tag=bottle_click] remove bottle_click
tag @e[tag=this_facade] remove this_facade
tag @e[tag=this_interact] remove this_interact

execute as @e[type=interaction,tag=water_purifier_interact,distance=..0.5] if data entity @s interaction run data remove entity @s interaction