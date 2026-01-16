scoreboard players add @s mr.shark_circle_angle 2

execute if score @s mr.shark_circle_angle matches 360.. run scoreboard players remove @s mr.shark_circle_angle 360

execute store result score #center_x mr.data run data get entity @e[type=item_display,tag=mr.center,limit=1] Pos[0]
execute store result score #center_z mr.data run data get entity @e[type=item_display,tag=mr.center,limit=1] Pos[2]

function mineraft:shark/math/calculate_circle_position

execute store result score #shark_x mr.data run data get entity @s Pos[0] 100
execute store result score #shark_y mr.data run data get entity @s Pos[1] 100
execute store result score #shark_z mr.data run data get entity @s Pos[2] 100

scoreboard players operation #target_x mr.data *= #100 mr.const
scoreboard players set #target_y mr.data 6200
scoreboard players operation #target_z mr.data *= #100 mr.const

scoreboard players operation #delta_x mr.data = #target_x mr.data
scoreboard players operation #delta_x mr.data -= #shark_x mr.data

scoreboard players operation #delta_y mr.data = #target_y mr.data
scoreboard players operation #delta_y mr.data -= #shark_y mr.data

scoreboard players operation #delta_z mr.data = #target_z mr.data
scoreboard players operation #delta_z mr.data -= #shark_z mr.data

scoreboard players set @s mr.shark_speed 40

function mineraft:shark/math/normalize_and_apply
function mineraft:shark/core/update_rotation
