execute if data entity @s {data:{side:"north"}} run fill ~-1 ~2 ~ ~-1 ~2 ~ air replace minecraft:iron_bars
execute if data entity @s {data:{side:"north"}} run fill ~ ~2 ~ ~ ~2 ~ air replace minecraft:iron_bars
execute if data entity @s {data:{side:"north"}} run fill ~1 ~2 ~ ~1 ~2 ~ air replace minecraft:iron_bars

execute if data entity @s {data:{side:"south"}} run fill ~-1 ~2 ~ ~-1 ~2 ~ air replace minecraft:iron_bars
execute if data entity @s {data:{side:"south"}} run fill ~ ~2 ~ ~ ~2 ~ air replace minecraft:iron_bars
execute if data entity @s {data:{side:"south"}} run fill ~1 ~2 ~ ~1 ~2 ~ air replace minecraft:iron_bars

execute if data entity @s {data:{side:"east"}} run fill ~ ~2 ~-1 ~ ~2 ~-1 air replace minecraft:iron_bars
execute if data entity @s {data:{side:"east"}} run fill ~ ~2 ~ ~ ~2 ~ air replace minecraft:iron_bars
execute if data entity @s {data:{side:"east"}} run fill ~ ~2 ~1 ~ ~2 ~1 air replace minecraft:iron_bars

execute if data entity @s {data:{side:"west"}} run fill ~ ~2 ~-1 ~ ~2 ~-1 air replace minecraft:iron_bars
execute if data entity @s {data:{side:"west"}} run fill ~ ~2 ~ ~ ~2 ~ air replace minecraft:iron_bars
execute if data entity @s {data:{side:"west"}} run fill ~ ~2 ~1 ~ ~2 ~1 air replace minecraft:iron_bars

tag @s add mr.supporting_platform
