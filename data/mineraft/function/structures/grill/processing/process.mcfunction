scoreboard players add @s mr.grill_progress 1
execute if score @s mr.grill_progress matches 20.. run function mineraft:structures/grill/processing/process_second
execute if score @s mr.grill_fuel matches 1.. run particle flame ~ ~-0.3 ~ 0 0 0 0 3