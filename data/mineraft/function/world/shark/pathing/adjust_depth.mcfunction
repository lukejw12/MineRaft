execute store result score #random_depth mr.data run random value -3..3

scoreboard players set @s mr.shark_target_y 58
scoreboard players operation @s mr.shark_target_y += #random_depth mr.data

execute store result score @s mr.shark_y_timer run random value 30..60