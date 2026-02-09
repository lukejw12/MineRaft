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

execute store result score #shark_name mr.data run random value 1..100
execute as @e[type=armor_stand,tag=mr.new_shark,limit=1] if score #shark_name mr.data matches 1..70 run data merge entity @s {CustomName:{"text":"Steve the Shark"}}
execute as @e[type=armor_stand,tag=mr.new_shark,limit=1] if score #shark_name mr.data matches 71..80 run data merge entity @s {CustomName:{"text":"Blåhaj"}}
execute as @e[type=armor_stand,tag=mr.new_shark,limit=1] if score #shark_name mr.data matches 81..88 run data merge entity @s {CustomName:{"text":"Jawseph"}}
execute as @e[type=armor_stand,tag=mr.new_shark,limit=1] if score #shark_name mr.data matches 89..93 run data merge entity @s {CustomName:{"text":"Bruce"}}
execute as @e[type=armor_stand,tag=mr.new_shark,limit=1] if score #shark_name mr.data matches 94..98 run data merge entity @s {CustomName:{"text":"Bitey McBiteface"}}
execute as @e[type=armor_stand,tag=mr.new_shark,limit=1] if score #shark_name mr.data matches 99..100 run data merge entity @s {CustomName:{"text":"doo, doo, doo, doo, doo, doo"}}

execute positioned ~ ~ ~ rotated ~ 0 run function animated_java:mineraft/summon {args: {animation: 'steve_swim_idle'}}
execute as @e[type=item_display,tag=aj.mineraft.root,tag=mr.shark-display.new,limit=1] store result score @s mr.shark_id run scoreboard players add #global_shark mr.shark_id 1
execute as @e[type=armor_stand,tag=mr.new_shark,limit=1] run scoreboard players operation @s mr.shark_id = @e[type=item_display,tag=aj.mineraft.root,tag=mr.shark-display.new,limit=1] mr.shark_id

tag @e[type=item_display,tag=mr.shark-display.new] remove mr.shark-display.new
tag @e[type=armor_stand,tag=mr.new_shark] remove mr.new_shark