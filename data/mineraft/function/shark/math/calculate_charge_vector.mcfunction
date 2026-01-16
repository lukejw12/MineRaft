scoreboard players operation #delta_x mr.data = #target_x mr.data
scoreboard players operation #delta_x mr.data -= #shark_x mr.data

scoreboard players operation #delta_y mr.data = #target_y mr.data
scoreboard players operation #delta_y mr.data -= #shark_y mr.data

scoreboard players operation #delta_z mr.data = #target_z mr.data
scoreboard players operation #delta_z mr.data -= #shark_z mr.data

function mineraft:shark/math/calculate_distance

execute if score #distance mr.data matches ..1000 run scoreboard players set @s mr.shark_speed 1000
execute if score #distance mr.data matches 1001..2000 run scoreboard players set @s mr.shark_speed 1400
execute if score #distance mr.data matches 2001.. run scoreboard players set @s mr.shark_speed 1500

function mineraft:shark/math/normalize_and_apply