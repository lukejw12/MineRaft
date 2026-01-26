scoreboard players remove @s mr.purifier_timer 20

scoreboard players remove @s mr.purifier_fuel 1

function mineraft:structures/water_purifier/models/fuel/update

execute if score @s mr.purifier_fuel matches 0 run function mineraft:structures/water_purifier/models/idle/update

scoreboard players add @s mr.purifier_progress 1

execute if score @s mr.purifier_progress matches 30.. run function mineraft:structures/water_purifier/processing/finish_purify

execute if score @s mr.purifier_fuel matches 1.. run function mineraft:structures/water_purifier/utils/particles/calculate_offset