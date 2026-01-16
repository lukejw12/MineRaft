scoreboard players remove @s mr.shark_turn_timer 1

execute if score @s mr.shark_turn_timer matches ..0 run function mineraft:shark/pathing/adjust_heading_prowl

execute store result score #shark_x mr.data run data get entity @s Pos[0]
execute store result score #shark_y mr.data run data get entity @s Pos[1] 100
execute store result score #shark_z mr.data run data get entity @s Pos[2]
execute store result score #target_x mr.data run data get entity @a[tag=mr.shark_target,limit=1] Pos[0]
execute store result score #target_z mr.data run data get entity @a[tag=mr.shark_target,limit=1] Pos[2]

scoreboard players operation #dist_x mr.data = #target_x mr.data
scoreboard players operation #dist_x mr.data -= #shark_x mr.data
scoreboard players operation #dist_z mr.data = #target_z mr.data
scoreboard players operation #dist_z mr.data -= #shark_z mr.data

execute if score #dist_x mr.data matches 15.. run scoreboard players add @s mr.shark_heading_x 15
execute if score #dist_x mr.data matches ..-15 run scoreboard players remove @s mr.shark_heading_x 15
execute if score #dist_z mr.data matches 15.. run scoreboard players add @s mr.shark_heading_z 15
execute if score #dist_z mr.data matches ..-15 run scoreboard players remove @s mr.shark_heading_z 15

execute if score #dist_x mr.data matches ..-8 run scoreboard players remove @s mr.shark_heading_x 8
execute if score #dist_x mr.data matches 8.. run scoreboard players add @s mr.shark_heading_x 8
execute if score #dist_z mr.data matches ..-8 run scoreboard players remove @s mr.shark_heading_z 8
execute if score #dist_z mr.data matches 8.. run scoreboard players add @s mr.shark_heading_z 8

scoreboard players operation #target_y mr.data = @s mr.shark_target_y
scoreboard players operation #target_y mr.data *= #100 mr.const
scoreboard players operation #delta_y mr.data = #target_y mr.data
scoreboard players operation #delta_y mr.data -= #shark_y mr.data

function mineraft:shark/core/update_rotation

execute store result entity @s Motion[0] double 0.002 run scoreboard players get @s mr.shark_heading_x
execute store result entity @s Motion[1] double 0.0002 run scoreboard players get #delta_y mr.data
execute store result entity @s Motion[2] double 0.002 run scoreboard players get @s mr.shark_heading_z