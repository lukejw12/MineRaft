$execute if entity @s[tag=mr.trapdoor_$(pos)_north] run setblock ~ ~ ~ minecraft:iron_trapdoor[facing=north,half=bottom,open=true]
$execute if entity @s[tag=mr.trapdoor_$(pos)_south] run setblock ~ ~ ~ minecraft:iron_trapdoor[facing=south,half=bottom,open=true]
$execute if entity @s[tag=mr.trapdoor_$(pos)_east] run setblock ~ ~ ~ minecraft:iron_trapdoor[facing=east,half=bottom,open=true]
$execute if entity @s[tag=mr.trapdoor_$(pos)_west] run setblock ~ ~ ~ minecraft:iron_trapdoor[facing=west,half=bottom,open=true]