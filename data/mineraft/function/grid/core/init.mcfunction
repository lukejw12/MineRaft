
execute unless entity @s[tag=mr.surface] run tag @s add mr.surface
execute unless data entity @s data.grid run data modify entity @s data.grid set value {}

execute unless data entity @s data.grid.cx store result entity @s data.grid.cx int 1 run data get entity @s Pos[0]
execute unless data entity @s data.grid.cz store result entity @s data.grid.cz int 1 run data get entity @s Pos[2]
