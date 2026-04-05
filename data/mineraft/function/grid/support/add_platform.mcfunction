
execute store result score #pc mr.data run data get entity @s data.grid.platform_count
scoreboard players add #pc mr.data 1
execute store result entity @s data.grid.platform_count int 1 run scoreboard players get #pc mr.data
