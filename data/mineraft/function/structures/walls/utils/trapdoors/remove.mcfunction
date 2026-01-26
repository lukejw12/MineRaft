execute if data storage mineraft:walls {destroy_side:"north"} unless block ~-1 ~1 ~ barrier run setblock ~-1 ~1 ~ air
execute if data storage mineraft:walls {destroy_side:"north"} unless block ~ ~1 ~ barrier run setblock ~ ~1 ~ air
execute if data storage mineraft:walls {destroy_side:"north"} unless block ~1 ~1 ~ barrier run setblock ~1 ~1 ~ air
execute if data storage mineraft:walls {destroy_side:"north"} run setblock ~ ~2 ~ air
execute if data storage mineraft:walls {destroy_side:"north"} run setblock ~-1 ~3 ~ air
execute if data storage mineraft:walls {destroy_side:"north"} run setblock ~ ~3 ~ air
execute if data storage mineraft:walls {destroy_side:"north"} run setblock ~1 ~3 ~ air

execute if data storage mineraft:walls {destroy_side:"south"} unless block ~-1 ~1 ~ barrier run setblock ~-1 ~1 ~ air
execute if data storage mineraft:walls {destroy_side:"south"} unless block ~ ~1 ~ barrier run setblock ~ ~1 ~ air
execute if data storage mineraft:walls {destroy_side:"south"} unless block ~1 ~1 ~ barrier run setblock ~1 ~1 ~ air
execute if data storage mineraft:walls {destroy_side:"south"} run setblock ~ ~2 ~ air
execute if data storage mineraft:walls {destroy_side:"south"} run setblock ~-1 ~3 ~ air
execute if data storage mineraft:walls {destroy_side:"south"} run setblock ~ ~3 ~ air
execute if data storage mineraft:walls {destroy_side:"south"} run setblock ~1 ~3 ~ air

execute if data storage mineraft:walls {destroy_side:"east"} unless block ~ ~1 ~ barrier run setblock ~ ~1 ~ air
execute if data storage mineraft:walls {destroy_side:"east"} run setblock ~ ~2 ~-1 air
execute if data storage mineraft:walls {destroy_side:"east"} run setblock ~ ~2 ~ air
execute if data storage mineraft:walls {destroy_side:"east"} run setblock ~ ~2 ~1 air
execute if data storage mineraft:walls {destroy_side:"east"} run setblock ~ ~3 ~ air

execute if data storage mineraft:walls {destroy_side:"west"} unless block ~ ~1 ~ barrier run setblock ~ ~1 ~ air
execute if data storage mineraft:walls {destroy_side:"west"} run setblock ~ ~2 ~-1 air
execute if data storage mineraft:walls {destroy_side:"west"} run setblock ~ ~2 ~ air
execute if data storage mineraft:walls {destroy_side:"west"} run setblock ~ ~2 ~1 air
execute if data storage mineraft:walls {destroy_side:"west"} run setblock ~ ~3 ~ air