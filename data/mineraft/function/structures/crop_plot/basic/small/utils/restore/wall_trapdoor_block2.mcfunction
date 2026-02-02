$execute positioned ~$(block1_offset_x) ~ ~$(block1_offset_z) run setblock ~ ~ ~ stone

$execute if entity @s[tag=mr.trapdoor_north2] positioned ~$(block1_offset_x) ~ ~$(block1_offset_z) run setblock ~ ~ ~ minecraft:iron_trapdoor[facing=north,half=bottom,open=true]
execute if entity @s[tag=mr.trapdoor_north2] run tag @s remove mr.trapdoor_north2
$execute if entity @s[tag=mr.trapdoor_south2] positioned ~$(block1_offset_x) ~ ~$(block1_offset_z) run setblock ~ ~ ~ minecraft:iron_trapdoor[facing=south,half=bottom,open=true]
execute if entity @s[tag=mr.trapdoor_south2] run tag @s remove mr.trapdoor_south2
$execute if entity @s[tag=mr.trapdoor_west2] positioned ~$(block1_offset_x) ~ ~$(block1_offset_z) run setblock ~ ~ ~ minecraft:iron_trapdoor[facing=west,half=bottom,open=true]
execute if entity @s[tag=mr.trapdoor_west2] run tag @s remove mr.trapdoor_west2
$execute if entity @s[tag=mr.trapdoor_east2] positioned ~$(block1_offset_x) ~ ~$(block1_offset_z) run setblock ~ ~ ~ minecraft:iron_trapdoor[facing=east,half=bottom,open=true]
execute if entity @s[tag=mr.trapdoor_east2] run tag @s remove mr.trapdoor_east2