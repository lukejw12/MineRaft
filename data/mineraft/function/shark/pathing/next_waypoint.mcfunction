data remove entity @s data.waypoints[0]

execute store result score #remaining mr.data run data get entity @s data.waypoints

execute if score #remaining mr.data matches 0 run scoreboard players set @s mr.shark_path_timer 0