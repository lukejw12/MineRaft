execute unless data entity @s {data:{state:"purifying"}} run return fail

execute if score @s mr.purifier_fuel matches 1.. run function mineraft:structures/water_purifier/process