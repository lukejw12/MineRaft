scoreboard players add @s mr.recycler_tick 1

execute if score @s mr.recycler_tick matches 20.. run function mineraft:structures/recycler/processing/process_second

particle smoke ~ ~1.2 ~ 0.1 0.1 0.1 0.005 1
