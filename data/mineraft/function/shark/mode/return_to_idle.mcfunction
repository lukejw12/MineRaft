scoreboard players set @s mr.shark_mode 0
scoreboard players set @s mr.shark_path_timer 0
scoreboard players set @s mr.shark_target_y 58

scoreboard players operation #current_shark_id mr.data = @s mr.shark_id
execute as @a[tag=mr.shark_target] if score @s mr.shark_id = #current_shark_id mr.data run tag @s remove mr.shark_target
execute as @a[tag=mr.shark_target] if score @s mr.shark_id = #current_shark_id mr.data run scoreboard players reset @s mr.shark_id

scoreboard players operation #shark_id mr.data = @s mr.shark_id
execute as @e[type=item_display,tag=aj.mineraft.root] if score @s mr.shark_id = #shark_id mr.data run function animated_java:mineraft/animations/steve_swim_idle/play