data modify storage mineraft:purifier fire_x set from entity @s data.fire_x
data modify storage mineraft:purifier fire_z set from entity @s data.fire_z
execute at @s run function mineraft:structures/water_purifier/fire/do_spawn with storage mineraft:purifier
