execute if data storage mineraft:walls {destroy_side:"north"} positioned ~ ~ ~-1 run fill ~-1 ~ ~ ~1 ~ ~ barrier replace air
execute if data storage mineraft:walls {destroy_side:"south"} positioned ~ ~ ~1 run fill ~-1 ~ ~ ~1 ~ ~ barrier replace air
execute if data storage mineraft:walls {destroy_side:"east"} positioned ~1 ~ ~ run fill ~ ~ ~-1 ~ ~ ~1 barrier replace air
execute if data storage mineraft:walls {destroy_side:"west"} positioned ~-1 ~ ~ run fill ~ ~ ~-1 ~ ~ ~1 barrier replace air


