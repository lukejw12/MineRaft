scoreboard players add @s mr.purifier_timer 1

execute if score @s mr.purifier_timer matches 20.. run function mineraft:structures/water_purifier/process_second
execute if score @s mr.purifier_fuel matches 1.. run particle flame ~ ~-0.2 ~ 0 0 0 0 1
