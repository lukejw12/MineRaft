execute if score @s mr.shark_idle_type matches 0 run function mineraft:shark/pathing/generate_wander_target
execute if score @s mr.shark_idle_type matches 1 run function mineraft:shark/pathing/generate_circle_start

scoreboard players set @s mr.shark_path_timer 999
scoreboard players set @s mr.shark_waypoint 0