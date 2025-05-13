execute if data entity @s interaction on target if entity @s[nbt={SelectedItem:{id:"minecraft:structure_block"}}] run function mineraft:hammer/hammer_right_click

execute if data entity @s interaction run tag @s add has_interaction

execute as @s[tag=has_interaction] at @s on target if entity @s[nbt={SelectedItem:{id:"minecraft:spruce_planks"}}] run tag @e[tag=has_interaction,limit=1,sort=nearest,type=interaction,distance=0..] add planks_click

execute as @s[tag=planks_click] at @s unless entity @e[type=marker,distance=..0.5,tag=water_purifier_active,tag=has_planks] run tag @e[type=marker,distance=..0.5,tag=water_purifier_active,limit=1] add has_planks
execute as @s[tag=planks_click] at @s unless entity @e[type=marker,distance=..0.5,tag=water_purifier_active,tag=processing] if entity @e[type=marker,distance=..0.5,tag=water_purifier_active,tag=has_planks,tag=!ready] run item modify entity @e[type=item_display,tag=this_facade,limit=1,distance=0..] contents {function:"set_components",components:{"minecraft:item_model":"minecraft:water_purifier_planks"}}
execute as @s[tag=planks_click] at @s unless entity @e[type=marker,distance=..0.5,tag=water_purifier_active,tag=processing] if entity @e[type=marker,distance=..0.5,tag=water_purifier_active,tag=has_planks,tag=!ready] on target run clear @s minecraft:spruce_planks 1

execute as @s[tag=has_interaction,tag=planks_click] at @s on target if items entity @s weapon.mainhand minecraft:potion[minecraft:potion_contents={potion:"minecraft:water"}] run tag @e[type=interaction,tag=has_interaction,limit=1,sort=nearest,distance=0..] add water_click

execute as @s[tag=water_click] at @s if entity @e[type=marker,distance=..0.5,tag=water_purifier_active,tag=has_planks,tag=!processing] run tag @e[type=marker,distance=..0.5,tag=water_purifier_active,limit=1] add processing
execute as @s[tag=water_click] at @s if entity @e[type=marker,distance=..0.5,tag=water_purifier_active,tag=has_planks,tag=processing,tag=!ready] run item modify entity @e[type=item_display,tag=this_facade,limit=1,distance=0..] contents {function:"set_components",components:{"minecraft:item_model":"minecraft:water_purifier_filled"}}
execute as @s[tag=water_click] at @s if entity @e[type=marker,distance=..0.5,tag=water_purifier_active,tag=has_planks,tag=processing,tag=!ready] on target run clear @s minecraft:potion[minecraft:potion_contents={potion:"minecraft:water"}] 1
execute as @s[tag=water_click] at @s if entity @e[type=marker,distance=..0.5,tag=water_purifier_active,tag=has_planks,tag=processing,tag=!ready] on target run give @s glass_bottle

execute as @s[tag=has_interaction] at @s on target if entity @s[nbt={SelectedItem:{id:"minecraft:glass_bottle"}}] run tag @e[type=interaction,tag=has_interaction,limit=1,sort=nearest,distance=0..] add bottle_click

execute as @s[tag=bottle_click] at @s if entity @e[type=marker,distance=..0.5,tag=water_purifier_active,tag=ready] run function mineraft:raft_utility/water_purifier/collect_water

execute if data entity @s interaction run data remove entity @s interaction
