execute store result score #random_turn mr.data run random value -20..20

scoreboard players operation @s mr.shark_heading_x += #random_turn mr.data
scoreboard players operation @s mr.shark_heading_z += #random_turn mr.data

execute if score @s mr.shark_heading_x matches 150.. run scoreboard players set @s mr.shark_heading_x 150
execute if score @s mr.shark_heading_x matches ..-150 run scoreboard players set @s mr.shark_heading_x -150
execute if score @s mr.shark_heading_z matches 150.. run scoreboard players set @s mr.shark_heading_z 150
execute if score @s mr.shark_heading_z matches ..-150 run scoreboard players set @s mr.shark_heading_z -150

execute store result score @s mr.shark_turn_timer run random value 8..15