
scoreboard players add @s mr.smeltery_progress 1

execute if score @s mr.smeltery_progress matches 20.. run function mineraft:structures/smeltery/process_second

execute if score @s mr.smeltery_fuel matches 1.. run particle flame ~ ~-0.3 ~ 0 0 0 0 3