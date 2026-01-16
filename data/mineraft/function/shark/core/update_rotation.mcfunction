execute store result score #pos_x mr.data run data get entity @s Pos[0] 1000
execute store result score #pos_y mr.data run data get entity @s Pos[1] 1000
execute store result score #pos_z mr.data run data get entity @s Pos[2] 1000

execute store result score #motion_x mr.data run data get entity @s Motion[0] 1000
execute store result score #motion_z mr.data run data get entity @s Motion[2] 1000

scoreboard players operation #target_x mr.data = #pos_x mr.data
scoreboard players operation #target_x mr.data += #motion_x mr.data
scoreboard players operation #target_z mr.data = #pos_z mr.data
scoreboard players operation #target_z mr.data += #motion_z mr.data

execute store result storage mineraft:shark face_x double 0.001 run scoreboard players get #target_x mr.data
execute store result storage mineraft:shark face_y double 0.001 run scoreboard players get #pos_y mr.data
execute store result storage mineraft:shark face_z double 0.001 run scoreboard players get #target_z mr.data

function mineraft:shark/core/do_face with storage mineraft:shark