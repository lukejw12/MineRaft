scoreboard players remove @s mr.shark_path_timer 1

execute if score @s mr.shark_path_timer matches ..0 run function mineraft:shark/pathing/switch_idle_type
execute if score @s mr.shark_path_timer matches ..0 run function mineraft:shark/pathing/generate_idle_path

execute if score @s mr.shark_idle_type matches 0 run function mineraft:shark/pathing/follow_wander_path
execute if score @s mr.shark_idle_type matches 1 run function mineraft:shark/pathing/follow_circle_path