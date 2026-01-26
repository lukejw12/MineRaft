execute unless block ~ ~-1 ~ barrier run function mineraft:structures/smeltery/core/destroy

execute unless data entity @s {data:{state:"smelting"}} run return fail

execute if score @s mr.smeltery_fuel matches 1.. run function mineraft:structures/smeltery/processing/process