scoreboard players set @s mr.shark_mode 0
scoreboard players set @s mr.shark_prev_mode 0
scoreboard players set @s mr.shark_cooldown 0
scoreboard players set @s mr.shark_path_timer 0
scoreboard players set @s mr.shark_path_step 0
scoreboard players set @s mr.shark_idle_type 0
scoreboard players set @s mr.shark_circle_angle 0
scoreboard players set @s mr.shark_waypoint 0
data modify entity @s data.waypoints set value []
scoreboard players set @s mr.shark_heading_x 100
scoreboard players set @s mr.shark_heading_z 0
scoreboard players set @s mr.shark_turn_timer 20
scoreboard players set @s mr.shark_target_y 58
scoreboard players set @s mr.shark_y_timer 40
scoreboard players operation @s mr.shark_id = @e[type=item_display,tag=aj.mineraft.root,tag=mr.shark-display.new,limit=1] mr.shark_id
execute store result score #shark_name mr.data run random value 1..100
execute if score #shark_name mr.data matches 1..70 run data merge entity @s {CustomName:{"text":"Steve the Shark"}}
execute if score #shark_name mr.data matches 71..80 run data merge entity @s {CustomName:{"text":"Blåhaj"}}
execute if score #shark_name mr.data matches 81..88 run data merge entity @s {CustomName:{"text":"Jawseph"}}
execute if score #shark_name mr.data matches 89..93 run data merge entity @s {CustomName:{"text":"Bruce"}}
execute if score #shark_name mr.data matches 94..98 run data merge entity @s {CustomName:{"text":"Bitey McBiteface"}}
execute if score #shark_name mr.data matches 99..100 run data merge entity @s {CustomName:{"text":"doo, doo, doo, doo, doo, doo"}}
tag @s remove mr.new_shark