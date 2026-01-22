execute positioned ~ ~2 ~ unless block ~ ~ ~ barrier run tag @s remove mr.supporting_platform
execute positioned ~ ~2 ~ unless block ~ ~ ~ barrier if data entity @s {data:{side:"north"}} run setblock ~-1 ~ ~ minecraft:iron_trapdoor[facing=south,half=top,open=true]
execute positioned ~ ~2 ~ unless block ~ ~ ~ barrier if data entity @s {data:{side:"north"}} run setblock ~ ~ ~ minecraft:iron_trapdoor[facing=south,half=bottom,open=true]
execute positioned ~ ~2 ~ unless block ~ ~ ~ barrier if data entity @s {data:{side:"north"}} run setblock ~1 ~ ~ minecraft:iron_trapdoor[facing=south,half=top,open=true]

execute positioned ~ ~2 ~ unless block ~ ~ ~ barrier if data entity @s {data:{side:"south"}} run setblock ~-1 ~ ~ minecraft:iron_trapdoor[facing=north,half=top,open=true]
execute positioned ~ ~2 ~ unless block ~ ~ ~ barrier if data entity @s {data:{side:"south"}} run setblock ~ ~ ~ minecraft:iron_trapdoor[facing=north,half=bottom,open=true]
execute positioned ~ ~2 ~ unless block ~ ~ ~ barrier if data entity @s {data:{side:"south"}} run setblock ~1 ~ ~ minecraft:iron_trapdoor[facing=north,half=top,open=true]

execute positioned ~ ~2 ~ unless block ~ ~ ~ barrier if data entity @s {data:{side:"east"}} run setblock ~ ~ ~-1 minecraft:iron_trapdoor[facing=west,half=top,open=true]
execute positioned ~ ~2 ~ unless block ~ ~ ~ barrier if data entity @s {data:{side:"east"}} run setblock ~ ~ ~ minecraft:iron_trapdoor[facing=west,half=bottom,open=true]
execute positioned ~ ~2 ~ unless block ~ ~ ~ barrier if data entity @s {data:{side:"east"}} run setblock ~ ~ ~1 minecraft:iron_trapdoor[facing=west,half=top,open=true]

execute positioned ~ ~2 ~ unless block ~ ~ ~ barrier if data entity @s {data:{side:"west"}} run setblock ~ ~ ~-1 minecraft:iron_trapdoor[facing=east,half=top,open=true]
execute positioned ~ ~2 ~ unless block ~ ~ ~ barrier if data entity @s {data:{side:"west"}} run setblock ~ ~ ~ minecraft:iron_trapdoor[facing=east,half=bottom,open=true]
execute positioned ~ ~2 ~ unless block ~ ~ ~ barrier if data entity @s {data:{side:"west"}} run setblock ~ ~ ~1 minecraft:iron_trapdoor[facing=east,half=top,open=true]
execute unless entity @e[tag=mr.support] run say support gone --restoore wall top