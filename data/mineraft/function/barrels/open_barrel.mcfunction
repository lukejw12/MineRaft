
playsound minecraft:block.barrel.open player @s ~ ~ ~ 1 1
clear @s minecraft:barrel[custom_data={barrel_loot:true}] 1

loot give @s loot mineraft:decent_loot


advancement grant @s only mineraft:objectives/found_barrel