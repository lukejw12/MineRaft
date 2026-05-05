execute if score #sp.sailing sp.data matches 0 unless block ~ ~-1 ~ barrier run function mineraft:structures/water_purifier/core/destroy

execute unless data entity @s {data:{state:"purifying"}} run return fail

execute if score @s mr.purifier_fuel matches 1.. run function mineraft:structures/water_purifier/processing/process