summon armor_stand ~ ~ ~ {Tags:["mr.shark","mr.new_shark"],Invisible:0b,Marker:0b,Small:0b,NoBasePlate:1b}

execute as @e[type=armor_stand,tag=mr.new_shark,limit=1] run scoreboard players set @s mr.shark_mode 0
execute as @e[type=armor_stand,tag=mr.new_shark,limit=1] run scoreboard players set @s mr.shark_cooldown 0
execute as @e[type=armor_stand,tag=mr.new_shark,limit=1] run scoreboard players set @s mr.shark_path_timer 0
execute as @e[type=armor_stand,tag=mr.new_shark,limit=1] run scoreboard players set @s mr.shark_path_step 0
execute as @e[type=armor_stand,tag=mr.new_shark,limit=1] run scoreboard players set @s mr.shark_idle_type 0
execute as @e[type=armor_stand,tag=mr.new_shark,limit=1] run scoreboard players set @s mr.shark_circle_angle 0
execute as @e[type=armor_stand,tag=mr.new_shark,limit=1] run scoreboard players set @s mr.shark_waypoint 0
execute as @e[type=armor_stand,tag=mr.new_shark,limit=1] run data modify entity @s data.waypoints set value []
execute as @e[type=armor_stand,tag=mr.new_shark,limit=1] run scoreboard players set @s mr.shark_heading_x 100
execute as @e[type=armor_stand,tag=mr.new_shark,limit=1] run scoreboard players set @s mr.shark_heading_z 0
execute as @e[type=armor_stand,tag=mr.new_shark,limit=1] run scoreboard players set @s mr.shark_turn_timer 20
execute as @e[type=armor_stand,tag=mr.new_shark,limit=1] run scoreboard players set @s mr.shark_target_y 58
execute as @e[type=armor_stand,tag=mr.new_shark,limit=1] run scoreboard players set @s mr.shark_y_timer 40

tag @e[type=armor_stand,tag=mr.new_shark] remove mr.new_shark