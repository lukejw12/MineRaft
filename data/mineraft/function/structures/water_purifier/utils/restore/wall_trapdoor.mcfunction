setblock ~ ~ ~ stone

execute if entity @s[tag=mr.trapdoor_north] run setblock ~ ~ ~ minecraft:iron_trapdoor[facing=north,half=bottom,open=true]
execute if entity @s[tag=mr.trapdoor_north] run tag @s remove mr.trapdoor_north
execute if entity @s[tag=mr.trapdoor_south] run setblock ~ ~ ~ minecraft:iron_trapdoor[facing=south,half=bottom,open=true]
execute if entity @s[tag=mr.trapdoor_south] run tag @s remove mr.trapdoor_south
execute if entity @s[tag=mr.trapdoor_west] run setblock ~ ~ ~ minecraft:iron_trapdoor[facing=west,half=bottom,open=true]
execute if entity @s[tag=mr.trapdoor_west] run tag @s remove mr.trapdoor_west
execute if entity @s[tag=mr.trapdoor_east] run setblock ~ ~ ~ minecraft:iron_trapdoor[facing=east,half=bottom,open=true]
execute if entity @s[tag=mr.trapdoor_east] run tag @s remove mr.trapdoor_east

data modify storage mineraft:purifier block1_offset_x set from entity @s data.block1_offset_x
data modify storage mineraft:purifier block1_offset_z set from entity @s data.block1_offset_z
function mineraft:structures/water_purifier/utils/restore/wall_trapdoor_block2 with storage mineraft:purifier