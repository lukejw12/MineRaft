scoreboard players set #has_platform mr.data 0
execute positioned ~ ~2 ~ if block ~ ~ ~ barrier run scoreboard players set #has_platform mr.data 1
say test
execute if score #has_platform mr.data matches 0 run tag @s remove mr.supporting_platform

execute store result storage mineraft:debug wall_y int 1 run data get entity @s Pos[1]
execute if score #has_platform mr.data matches 0 unless entity @s[tag=mr.destroyed] run tellraw @a [{"text":"Restoring wall trapdoors at Y="},{"storage":"mineraft:debug","nbt":"wall_y"}]

execute if score #has_platform mr.data matches 0 unless entity @s[tag=mr.destroyed] if data entity @s {data:{side:"north"}} run setblock ~-1 ~2 ~ minecraft:iron_trapdoor[facing=south,half=top,open=true]
execute if score #has_platform mr.data matches 0 unless entity @s[tag=mr.destroyed] if data entity @s {data:{side:"north"}} run setblock ~ ~2 ~ minecraft:iron_trapdoor[facing=south,half=bottom,open=true]
execute if score #has_platform mr.data matches 0 unless entity @s[tag=mr.destroyed] if data entity @s {data:{side:"north"}} run setblock ~1 ~2 ~ minecraft:iron_trapdoor[facing=south,half=top,open=true]

execute if score #has_platform mr.data matches 0 unless entity @s[tag=mr.destroyed] if data entity @s {data:{side:"south"}} run setblock ~-1 ~2 ~ minecraft:iron_trapdoor[facing=north,half=top,open=true]
execute if score #has_platform mr.data matches 0 unless entity @s[tag=mr.destroyed] if data entity @s {data:{side:"south"}} run setblock ~ ~2 ~ minecraft:iron_trapdoor[facing=north,half=bottom,open=true]
execute if score #has_platform mr.data matches 0 unless entity @s[tag=mr.destroyed] if data entity @s {data:{side:"south"}} run setblock ~1 ~2 ~ minecraft:iron_trapdoor[facing=north,half=top,open=true]

execute if score #has_platform mr.data matches 0 unless entity @s[tag=mr.destroyed] if data entity @s {data:{side:"east"}} run setblock ~ ~2 ~-1 minecraft:iron_trapdoor[facing=west,half=top,open=true]
execute if score #has_platform mr.data matches 0 unless entity @s[tag=mr.destroyed] if data entity @s {data:{side:"east"}} run setblock ~ ~2 ~ minecraft:iron_trapdoor[facing=west,half=bottom,open=true]
execute if score #has_platform mr.data matches 0 unless entity @s[tag=mr.destroyed] if data entity @s {data:{side:"east"}} run setblock ~ ~2 ~1 minecraft:iron_trapdoor[facing=west,half=top,open=true]

execute if score #has_platform mr.data matches 0 unless entity @s[tag=mr.destroyed] if data entity @s {data:{side:"west"}} run setblock ~ ~2 ~-1 minecraft:iron_trapdoor[facing=east,half=top,open=true]
execute if score #has_platform mr.data matches 0 unless entity @s[tag=mr.destroyed] if data entity @s {data:{side:"west"}} run setblock ~ ~2 ~ minecraft:iron_trapdoor[facing=east,half=bottom,open=true]
execute if score #has_platform mr.data matches 0 unless entity @s[tag=mr.destroyed] if data entity @s {data:{side:"west"}} run setblock ~ ~2 ~1 minecraft:iron_trapdoor[facing=east,half=top,open=true]