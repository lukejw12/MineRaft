execute as @e[tag=mr.target_purifier] unless data entity @s {data:{state:"idle"}} run return fail
execute as @e[tag=mr.target_purifier] run data modify entity @s data.state set value "purifying"
execute as @e[tag=mr.target_purifier] run function mineraft:structures/water_purifier/models/purifying/update
execute as @a[tag=mr.interacting] run function mineraft:items/cups/use_water
playsound minecraft:entity.generic.splash block @a ~ ~ ~ 1 1

