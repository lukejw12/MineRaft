scoreboard players remove @s mr.shark_turn_timer 1
scoreboard players remove @s mr.shark_y_timer 1

execute if score @s mr.shark_turn_timer matches ..0 run function mineraft:shark/pathing/adjust_heading_wander
execute if score @s mr.shark_y_timer matches ..0 run function mineraft:shark/pathing/adjust_depth

execute store result score #shark_x mr.data run data get entity @s Pos[0]
execute store result score #shark_y mr.data run data get entity @s Pos[1] 100
execute store result score #shark_z mr.data run data get entity @s Pos[2]
execute store result score #center_x mr.data run data get entity @e[type=item_display,tag=mr.center,limit=1] Pos[0]
execute store result score #center_z mr.data run data get entity @e[type=item_display,tag=mr.center,limit=1] Pos[2]

scoreboard players operation #dist_x mr.data = #center_x mr.data
scoreboard players operation #dist_x mr.data -= #shark_x mr.data
scoreboard players operation #dist_z mr.data = #center_z mr.data
scoreboard players operation #dist_z mr.data -= #shark_z mr.data

execute if score #dist_x mr.data matches 50.. run scoreboard players add @s mr.shark_heading_x 10
execute if score #dist_x mr.data matches ..-50 run scoreboard players remove @s mr.shark_heading_x 10
execute if score #dist_z mr.data matches 50.. run scoreboard players add @s mr.shark_heading_z 10
execute if score #dist_z mr.data matches ..-50 run scoreboard players remove @s mr.shark_heading_z 10

execute store result storage mineraft:shark check_x double 0.01 run scoreboard players get @s mr.shark_heading_x
execute store result storage mineraft:shark check_z double 0.01 run scoreboard players get @s mr.shark_heading_z
function mineraft:shark/pathing/check_path_ahead with storage mineraft:shark

scoreboard players operation #target_y mr.data = @s mr.shark_target_y
scoreboard players operation #target_y mr.data *= #100 mr.const

scoreboard players operation #delta_y mr.data = #target_y mr.data
scoreboard players operation #delta_y mr.data -= #shark_y mr.data

function mineraft:shark/core/update_rotation

execute store result entity @s Motion[0] double 0.0025 run scoreboard players get @s mr.shark_heading_x
execute store result entity @s Motion[1] double 0.0002 run scoreboard players get #delta_y mr.data
execute store result entity @s Motion[2] double 0.0025 run scoreboard players get @s mr.shark_heading_z