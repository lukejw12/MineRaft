execute store result score #snap_x mr.data run data get entity @s Pos[0] 1000
execute store result score #snap_y mr.data run data get entity @s Pos[1] 1000
execute store result score #snap_z mr.data run data get entity @s Pos[2] 1000

scoreboard players add #snap_x mr.data 250
scoreboard players operation #snap_x mr.data /= #500 sp.const
scoreboard players operation #snap_x mr.data *= #500 sp.const
scoreboard players add #snap_x mr.data 1

scoreboard players remove #snap_y mr.data 40
scoreboard players add #snap_y mr.data 250
scoreboard players operation #snap_y mr.data /= #500 sp.const
scoreboard players operation #snap_y mr.data *= #500 sp.const
scoreboard players add #snap_y mr.data 41

scoreboard players add #snap_z mr.data 250
scoreboard players operation #snap_z mr.data /= #500 sp.const
scoreboard players operation #snap_z mr.data *= #500 sp.const
scoreboard players add #snap_z mr.data 1

execute store result storage mineraft:stairs shulker_x double 0.001 run scoreboard players get #snap_x mr.data
execute store result storage mineraft:stairs shulker_y double 0.001 run scoreboard players get #snap_y mr.data
execute store result storage mineraft:stairs shulker_z double 0.001 run scoreboard players get #snap_z mr.data
function mineraft:structures/stairs/core/tp_shulker with storage mineraft:stairs
