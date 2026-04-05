
scoreboard players set #has_capacity mr.data 0

execute unless data entity @s data.grid.has_support run return fail
execute unless data entity @s {data:{grid:{has_support:1b}}} run return fail

execute unless data entity @s data.grid.support_max run data modify entity @s data.grid.support_max set value 5
execute unless data entity @s data.grid.platform_count run data modify entity @s data.grid.platform_count set value 0

execute store result score #pc mr.data run data get entity @s data.grid.platform_count
execute store result score #max mr.data run data get entity @s data.grid.support_max

execute if score #pc mr.data < #max mr.data run scoreboard players set #has_capacity mr.data 1
