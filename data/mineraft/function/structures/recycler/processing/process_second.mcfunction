
scoreboard players set @s mr.recycler_tick 0

scoreboard players add @s mr.recycler_progress 1
scoreboard players add @s mr.recycler_battery_tick 1

execute if score @s mr.recycler_battery_tick matches 15.. run scoreboard players set @s mr.recycler_battery_tick 0
execute if score @s mr.recycler_battery_tick matches 0 run function mineraft:structures/recycler/processing/drain_battery

execute if score @s mr.recycler_progress matches 150.. run function mineraft:structures/recycler/processing/make_cube