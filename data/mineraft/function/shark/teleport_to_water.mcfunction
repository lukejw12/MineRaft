
execute if score @s shark.water_dir matches 0 run tp @s ~0.1 ~ ~
execute if score @s shark.water_dir matches 1 run tp @s ~-0.1 ~ ~
execute if score @s shark.water_dir matches 2 run tp @s ~ ~ ~0.1

execute if score @s shark.water_dir matches 3 run tp @s ~ ~ ~-0.1
execute if score @s shark.water_dir matches -1 run tp @s ~0.1 ~-0.1 ~

scoreboard players set @s shark.stuck_timer 0
