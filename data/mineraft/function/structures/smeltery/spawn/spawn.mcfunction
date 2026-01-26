playsound minecraft:block.vault.reject_rewarded_player block @a[distance=..10] ~ ~ ~ 100 1 1



function mineraft:structures/smeltery/spawn/spawn_display with storage mineraft:smeltery

summon interaction ~0.5 ~ ~0.5 {width:1.05f,height:1.05f,Tags:["mr.smeltery","mr.smeltery_interaction","mr.new"]}

summon item_display ~0.5 ~0.575 ~0.5 {item_display:"ground",Tags:["mr.smeltery","mr.smeltery_fuel_display","mr.new_fuel"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"minecraft:air"}}}
execute as @e[type=item_display,tag=mr.new_display,limit=1] if block ~ ~ ~ iron_trapdoor[facing=north] run tag @s add mr.trapdoor_north
execute as @e[type=item_display,tag=mr.new_display,limit=1] if block ~ ~ ~ iron_trapdoor[facing=south] run tag @s add mr.trapdoor_south
execute as @e[type=item_display,tag=mr.new_display,limit=1] if block ~ ~ ~ iron_trapdoor[facing=east] run tag @s add mr.trapdoor_east
execute as @e[type=item_display,tag=mr.new_display,limit=1] if block ~ ~ ~ iron_trapdoor[facing=west] run tag @s add mr.trapdoor_west
setblock ~ ~ ~ barrier
execute as @e[type=item_display,tag=mr.new_display,limit=1] run scoreboard players operation @s mr.link = @e[type=interaction,tag=mr.new,limit=1] mr.link
execute as @e[type=item_display,tag=mr.new_display,limit=1] store result score @s mr.smeltery_id run scoreboard players add #global mr.smeltery_id 1
execute as @e[type=interaction,tag=mr.new,limit=1] run scoreboard players operation @s mr.smeltery_id = @e[type=item_display,tag=mr.new_display,limit=1] mr.smeltery_id
execute as @e[type=item_display,tag=mr.new_fuel,limit=1] run scoreboard players operation @s mr.smeltery_id = @e[type=item_display,tag=mr.new_display,limit=1] mr.smeltery_id

execute as @e[type=item_display,tag=mr.new_display,limit=1] run data modify entity @s data.smeltery_type set from storage mineraft:smeltery smeltery_type
execute as @e[type=item_display,tag=mr.new_display,limit=1] run data modify entity @s data.state set value "idle"
execute as @e[type=item_display,tag=mr.new_display,limit=1] run scoreboard players set @s mr.smeltery_fuel 0
execute as @e[type=item_display,tag=mr.new_display,limit=1] run scoreboard players set @s mr.smeltery_progress 0
execute as @e[type=item_display,tag=mr.new_display,limit=1] run scoreboard players set @s mr.smeltery_max 0

tag @e[type=item_display,tag=mr.new_display] remove mr.new_display
tag @e[type=item_display,tag=mr.new_fuel] remove mr.new_fuel
tag @e[type=interaction,tag=mr.new] remove mr.new