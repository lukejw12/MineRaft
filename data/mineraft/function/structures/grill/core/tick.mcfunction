execute if score #sp.sailing sp.data matches 0 unless block ~ ~-1 ~ barrier run function mineraft:structures/grill/core/destroy
execute unless data entity @s {data:{state:"grilling"}} run return fail
execute if score @s mr.grill_fuel matches 1.. run function mineraft:structures/grill/processing/process