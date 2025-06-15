execute if data entity @s interaction on target if entity @s[nbt={SelectedItem:{id:"minecraft:structure_block"}}] run function mineraft:hammer/hammer_right_click

execute unless data entity @s interaction run return 0

execute if entity @s[tag=processing_interaction] run return 0
execute run tag @s add processing_interaction

tag @s add has_interaction

tag @e[type=marker,distance=..0.5,tag=water_purifier_active,limit=1] add target_purifier

execute at @s on target if items entity @s weapon.mainhand spruce_planks unless entity @e[type=marker,distance=..0.5,tag=target_purifier,tag=has_planks] run tag @e[type=interaction,tag=has_interaction,limit=1,sort=nearest,distance=0..] add planks_click

execute as @s[tag=planks_click] at @s run tag @e[type=marker,distance=..0.5,tag=target_purifier,limit=1] add has_planks
execute as @s[tag=planks_click] at @s run scoreboard players set @e[type=marker,distance=..0.5,tag=target_purifier,limit=1] has_planks 1
execute as @s[tag=planks_click] at @s if entity @e[type=marker,distance=..0.5,tag=target_purifier,tag=has_water] run item modify entity @e[type=item_display,tag=this_facade,limit=1,distance=0..] contents {function:"set_components",components:{"minecraft:item_model":"minecraft:water_purifier_filled"}}
execute as @s[tag=planks_click] at @s unless entity @e[type=marker,distance=..0.5,tag=target_purifier,tag=has_water] run item modify entity @e[type=item_display,tag=this_facade,limit=1,distance=0..] contents {function:"set_components",components:{"minecraft:item_model":"minecraft:water_purifier_planks"}}
execute as @s[tag=planks_click] at @s on target run clear @s minecraft:spruce_planks 1
execute as @s[tag=planks_click] at @s if entity @e[type=marker,distance=..0.5,tag=target_purifier,tag=has_water] run tag @e[type=marker,distance=..0.5,tag=target_purifier,limit=1] add processing
execute as @s[tag=planks_click] at @s if entity @e[type=marker,distance=..0.5,tag=target_purifier,tag=has_water] run scoreboard players set @e[type=marker,distance=..0.5,tag=target_purifier,limit=1] processing 1

execute at @s on target if items entity @s weapon.mainhand minecraft:potion[minecraft:potion_contents={potion:"minecraft:water"}] unless entity @e[type=marker,distance=..0.5,tag=target_purifier,tag=has_water] unless entity @e[type=marker,distance=..0.5,tag=target_purifier,tag=ready] run tag @e[type=interaction,tag=has_interaction,limit=1,sort=nearest,distance=0..] add water_click

execute as @s[tag=water_click] at @s run tag @e[type=marker,distance=..0.5,tag=target_purifier,limit=1] add has_water
execute as @s[tag=water_click] at @s run scoreboard players set @e[type=marker,distance=..0.5,tag=target_purifier,limit=1] has_water 1
execute as @s[tag=water_click] at @s if entity @e[type=marker,distance=..0.5,tag=target_purifier,tag=has_planks] run item modify entity @e[type=item_display,tag=this_facade,limit=1,distance=0..] contents {function:"set_components",components:{"minecraft:item_model":"minecraft:water_purifier_filled"}}
execute as @s[tag=water_click] at @s unless entity @e[type=marker,distance=..0.5,tag=target_purifier,tag=has_planks] run item modify entity @e[type=item_display,tag=this_facade,limit=1,distance=0..] contents {function:"set_components",components:{"minecraft:item_model":"minecraft:water_purifier_water"}}
execute as @s[tag=water_click] at @s on target run clear @s minecraft:potion[minecraft:potion_contents={potion:"minecraft:water"}] 1
execute as @s[tag=water_click] at @s on target run give @s glass_bottle
execute as @s[tag=water_click] at @s if entity @e[type=marker,distance=..0.5,tag=target_purifier,tag=has_planks] run tag @e[type=marker,distance=..0.5,tag=target_purifier,limit=1] add processing
execute as @s[tag=water_click] at @s if entity @e[type=marker,distance=..0.5,tag=target_purifier,tag=has_planks] run scoreboard players set @e[type=marker,distance=..0.5,tag=target_purifier,limit=1] processing 1

execute at @s on target if entity @s[nbt={SelectedItem:{id:"minecraft:glass_bottle"}}] if entity @e[type=marker,distance=..0.5,tag=target_purifier,tag=ready] run tag @e[type=interaction,tag=has_interaction,limit=1,sort=nearest,distance=0..] add bottle_click

execute as @s[tag=bottle_click] at @s run function mineraft:raft_utility/water_purifier/collect_water

tag @e[type=marker,tag=target_purifier] remove target_purifier
tag @s remove has_interaction
tag @s remove planks_click
tag @s remove water_click
tag @s remove bottle_click
tag @s remove processing_interaction

execute if data entity @s interaction run data remove entity @s interaction