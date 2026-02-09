summon armor_stand ~ ~ ~ {Tags:["mr.shark","mr.new_shark"],Invisible:1b,Marker:0b,Small:0b,NoBasePlate:1b}

execute as @e[type=armor_stand,tag=mr.new_shark,limit=1] run scoreboard players set @s mr.shark_mode 0
execute as @e[type=armor_stand,tag=mr.new_shark,limit=1] run scoreboard players set @s mr.shark_prev_mode 0
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

execute positioned ~ ~ ~ rotated ~ 0 run function animated_java:mineraft/summon {args: {animation: 'steve_swim_idle'}}
execute as @e[type=item_display,tag=aj.mineraft.root,tag=mr.shark-display.new,limit=1] store result score @s mr.shark_id run scoreboard players add #global_shark mr.shark_id 1
execute as @e[type=armor_stand,tag=mr.new_shark,limit=1] run scoreboard players operation @s mr.shark_id = @e[type=item_display,tag=aj.mineraft.root,tag=mr.shark-display.new,limit=1] mr.shark_id

tag @e[type=item_display,tag=mr.shark-display.new] remove mr.shark-display.new
tag @e[type=armor_stand,tag=mr.new_shark] remove mr.new_shark

