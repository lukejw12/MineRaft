scoreboard players operation #delta_x mr.data *= @s mr.shark_speed
scoreboard players operation #delta_y mr.data *= @s mr.shark_speed
scoreboard players operation #delta_z mr.data *= @s mr.shark_speed

execute store result entity @s Motion[0] double 0.00001 run scoreboard players get #delta_x mr.data
execute store result entity @s Motion[1] double 0.00001 run scoreboard players get #delta_y mr.data
execute store result entity @s Motion[2] double 0.00001 run scoreboard players get #delta_z mr.data