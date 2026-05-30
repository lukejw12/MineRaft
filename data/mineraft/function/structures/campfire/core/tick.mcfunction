execute if score #sp.sailing sp.data matches 0 unless block ~ ~-1 ~ barrier run function mineraft:structures/campfire/core/destroy
execute if score @s mr.campfire_fuel matches 1.. run function mineraft:structures/campfire/processing/process
