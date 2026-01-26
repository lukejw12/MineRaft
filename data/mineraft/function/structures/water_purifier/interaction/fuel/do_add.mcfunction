scoreboard players operation @s mr.purifier_fuel += #fuel_value mr.data

function mineraft:structures/water_purifier/models/fuel/update

execute as @a[tag=mr.interacting] run item modify entity @s weapon.mainhand mineraft:remove_one

