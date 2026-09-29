scoreboard players set @s mr.timer 0
scoreboard players add @s mr.progress 1
scoreboard players add @s mr.timer2 1
execute if score @s mr.timer2 matches 15.. run scoreboard players set @s mr.timer2 0
execute if score @s mr.timer2 matches 0 run function mineraft:structure/recycler/drain_battery
execute if score @s mr.progress matches 150.. run function mineraft:structure/recycler/make_cube
