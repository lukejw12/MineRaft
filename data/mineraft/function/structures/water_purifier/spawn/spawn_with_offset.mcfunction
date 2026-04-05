function mineraft:structures/water_purifier/spawn/spawn_display with storage mineraft:purifier

summon interaction ~0.5 ~ ~0.5 {width:1.05f,height:1.5f,Tags:["mr.purifier","mr.purifier_interaction","mr.new_interaction","mr.block_0"]}
function mineraft:structures/water_purifier/spawn/spawn_interaction with storage mineraft:purifier

summon item_display ~0.5 ~0.5 ~0.5 {item_display:"ground",Tags:["mr.purifier","mr.purifier_fuel_display","mr.new_fuel"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"minecraft:air"}}}
execute if block ~ ~ ~ iron_trapdoor[facing=north] run tag @e[type=item_display,tag=mr.new_display,limit=1] add mr.trapdoor_north
execute if block ~ ~ ~ iron_trapdoor[facing=south] run tag @e[type=item_display,tag=mr.new_display,limit=1] add mr.trapdoor_south
execute if block ~ ~ ~ iron_trapdoor[facing=east] run tag @e[type=item_display,tag=mr.new_display,limit=1] add mr.trapdoor_east
execute if block ~ ~ ~ iron_trapdoor[facing=west] run tag @e[type=item_display,tag=mr.new_display,limit=1] add mr.trapdoor_west
$execute positioned ~$(block1_offset_x) ~ ~$(block1_offset_z) if block ~ ~ ~ iron_trapdoor[facing=north] run tag @e[type=item_display,tag=mr.new_display,limit=1] add mr.trapdoor_north2
$execute positioned ~$(block1_offset_x) ~ ~$(block1_offset_z) if block ~ ~ ~ iron_trapdoor[facing=south] run tag @e[type=item_display,tag=mr.new_display,limit=1] add mr.trapdoor_south2
$execute positioned ~$(block1_offset_x) ~ ~$(block1_offset_z) if block ~ ~ ~ iron_trapdoor[facing=east] run tag @e[type=item_display,tag=mr.new_display,limit=1] add mr.trapdoor_east2
$execute positioned ~$(block1_offset_x) ~ ~$(block1_offset_z) if block ~ ~ ~ iron_trapdoor[facing=west] run tag @e[type=item_display,tag=mr.new_display,limit=1] add mr.trapdoor_west2

setblock ~ ~ ~ barrier
$setblock ~$(block1_offset_x) ~ ~$(block1_offset_z) barrier

data modify storage mineraft:grid type set value "purifier"
data modify storage mineraft:grid block1_offset_x set from storage mineraft:purifier block1_offset_x
data modify storage mineraft:grid block1_offset_z set from storage mineraft:purifier block1_offset_z
execute store result score #hit_bx mr.data run data get entity @e[type=item_display,tag=mr.new_display,limit=1] Pos[0]
execute store result score #hit_bz mr.data run data get entity @e[type=item_display,tag=mr.new_display,limit=1] Pos[2]
execute positioned ~0.5 ~-1 ~0.5 as @e[type=item_display,tag=mr.surface,distance=..3,limit=1,sort=nearest] run function mineraft:grid/block/compute_and_claim_pair

execute as @e[type=item_display,tag=mr.new_display,limit=1] store result score @s mr.purifier_id run scoreboard players add #global mr.purifier_id 1
execute as @e[type=interaction,tag=mr.new_interaction] run scoreboard players operation @s mr.purifier_id = @e[type=item_display,tag=mr.new_display,limit=1] mr.purifier_id
execute as @e[type=item_display,tag=mr.new_fuel,limit=1] run scoreboard players operation @s mr.purifier_id = @e[type=item_display,tag=mr.new_display,limit=1] mr.purifier_id

execute as @e[type=item_display,tag=mr.new_display,limit=1] run data modify entity @s data.purifier_type set from storage mineraft:purifier purifier_type
execute as @e[type=item_display,tag=mr.new_display,limit=1] run data modify entity @s data.state set value "idle"
execute as @e[type=item_display,tag=mr.new_display,limit=1] run data modify entity @s data.block1_offset_x set from storage mineraft:purifier block1_offset_x
execute as @e[type=item_display,tag=mr.new_display,limit=1] run data modify entity @s data.block1_offset_z set from storage mineraft:purifier block1_offset_z
execute as @e[type=item_display,tag=mr.new_display,limit=1] run scoreboard players set @s mr.purifier_fuel 0
execute as @e[type=item_display,tag=mr.new_display,limit=1] run scoreboard players set @s mr.purifier_progress 0
execute as @e[type=item_display,tag=mr.new_display,limit=1] run scoreboard players set @s mr.purifier_timer 0

tag @e[type=item_display,tag=mr.new_display] remove mr.new_display
tag @e[type=item_display,tag=mr.new_fuel] remove mr.new_fuel
tag @e[type=interaction,tag=mr.new_interaction] remove mr.new_interaction