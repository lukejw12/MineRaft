
execute if data storage mineraft:walls {side:"north"} run setblock ~-1 ~1 ~ minecraft:iron_trapdoor[facing=south,half=top,open=true] strict
execute if data storage mineraft:walls {side:"north"} run setblock ~ ~1 ~ minecraft:iron_trapdoor[facing=south,half=bottom,open=true] strict
execute if data storage mineraft:walls {side:"north"} run setblock ~1 ~1 ~ minecraft:iron_trapdoor[facing=south,half=top,open=true] strict

execute if data storage mineraft:walls {side:"north"} positioned ~ ~2 ~ unless block ~ ~ ~ barrier run setblock ~ ~ ~ minecraft:iron_trapdoor[facing=south,half=bottom,open=true] strict

execute if data storage mineraft:walls {side:"north"} positioned ~ ~3 ~ unless block ~ ~ ~ barrier run setblock ~-1 ~ ~ minecraft:iron_trapdoor[facing=south,half=top,open=true] strict
execute if data storage mineraft:walls {side:"north"} positioned ~ ~3 ~ unless block ~ ~ ~ barrier run setblock ~ ~ ~ minecraft:iron_trapdoor[facing=south,half=bottom,open=true] strict
execute if data storage mineraft:walls {side:"north"} positioned ~ ~3 ~ unless block ~ ~ ~ barrier run setblock ~1 ~ ~ minecraft:iron_trapdoor[facing=south,half=top,open=true] strict

execute if data storage mineraft:walls {side:"south"} run setblock ~-1 ~1 ~ minecraft:iron_trapdoor[facing=north,half=top,open=true] strict
execute if data storage mineraft:walls {side:"south"} run setblock ~ ~1 ~ minecraft:iron_trapdoor[facing=north,half=bottom,open=true] strict
execute if data storage mineraft:walls {side:"south"} run setblock ~1 ~1 ~ minecraft:iron_trapdoor[facing=north,half=top,open=true] strict

execute if data storage mineraft:walls {side:"south"} positioned ~ ~2 ~ unless block ~ ~ ~ barrier run setblock ~ ~ ~ minecraft:iron_trapdoor[facing=north,half=bottom,open=true] strict

execute if data storage mineraft:walls {side:"south"} positioned ~ ~3 ~ unless block ~ ~ ~ barrier run setblock ~-1 ~ ~ minecraft:iron_trapdoor[facing=north,half=top,open=true] strict
execute if data storage mineraft:walls {side:"south"} positioned ~ ~3 ~ unless block ~ ~ ~ barrier run setblock ~ ~ ~ minecraft:iron_trapdoor[facing=north,half=bottom,open=true] strict
execute if data storage mineraft:walls {side:"south"} positioned ~ ~3 ~ unless block ~ ~ ~ barrier run setblock ~1 ~ ~ minecraft:iron_trapdoor[facing=north,half=top,open=true] strict

execute if data storage mineraft:walls {side:"east"} run setblock ~ ~1 ~ minecraft:iron_trapdoor[facing=west,half=bottom,open=true] strict

execute if data storage mineraft:walls {side:"east"} positioned ~ ~2 ~ unless block ~ ~ ~ barrier run setblock ~ ~ ~-1 minecraft:iron_trapdoor[facing=west,half=top,open=true] strict
execute if data storage mineraft:walls {side:"east"} positioned ~ ~2 ~ unless block ~ ~ ~ barrier run setblock ~ ~ ~ minecraft:iron_trapdoor[facing=west,half=bottom,open=true] strict
execute if data storage mineraft:walls {side:"east"} positioned ~ ~2 ~ unless block ~ ~ ~ barrier run setblock ~ ~ ~1 minecraft:iron_trapdoor[facing=west,half=top,open=true] strict

execute if data storage mineraft:walls {side:"east"} positioned ~ ~3 ~ unless block ~ ~ ~ barrier run setblock ~ ~ ~ minecraft:iron_trapdoor[facing=west,half=bottom,open=true] strict

execute if data storage mineraft:walls {side:"west"} run setblock ~ ~1 ~ minecraft:iron_trapdoor[facing=east,half=bottom,open=true] strict

execute if data storage mineraft:walls {side:"west"} positioned ~ ~2 ~ unless block ~ ~ ~ barrier run setblock ~ ~ ~-1 minecraft:iron_trapdoor[facing=east,half=top,open=true] strict
execute if data storage mineraft:walls {side:"west"} positioned ~ ~2 ~ unless block ~ ~ ~ barrier run setblock ~ ~ ~ minecraft:iron_trapdoor[facing=east,half=bottom,open=true] strict
execute if data storage mineraft:walls {side:"west"} positioned ~ ~2 ~ unless block ~ ~ ~ barrier run setblock ~ ~ ~1 minecraft:iron_trapdoor[facing=east,half=top,open=true] strict

execute if data storage mineraft:walls {side:"west"} positioned ~ ~3 ~ unless block ~ ~ ~ barrier run setblock ~ ~ ~ minecraft:iron_trapdoor[facing=east,half=bottom,open=true] strict