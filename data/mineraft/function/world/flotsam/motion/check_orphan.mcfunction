scoreboard players set #found_bobber mr.data 0
execute as @e[type=fishing_bobber] if score @s mr.bobber_id = @e[type=armor_stand,tag=mr.bobber_tracker,sort=nearest,limit=1] mr.bobber_id run scoreboard players set #found_bobber mr.data 1
execute if score #found_bobber mr.data matches 0 run scoreboard players add @s mr.bobber_timer 1
execute if score @s mr.bobber_timer matches 400.. if score #found_bobber mr.data matches 0 run kill @s

