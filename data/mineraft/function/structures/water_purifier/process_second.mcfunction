scoreboard players remove @s mr.purifier_timer 20

scoreboard players remove @s mr.purifier_fuel 1

function mineraft:structures/water_purifier/update_fuel_display

execute if score @s mr.purifier_fuel matches 0 run function mineraft:structures/water_purifier/update_model_idle

scoreboard players add @s mr.purifier_progress 1

execute if score @s mr.purifier_progress matches 30.. run function mineraft:structures/water_purifier/finish_purify

execute if score @s mr.purifier_fuel matches 1.. run function mineraft:structures/water_purifier/calculate_particle_offset