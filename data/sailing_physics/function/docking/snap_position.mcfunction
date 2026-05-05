execute store result score #sp.snap_x sp.data run data get entity @s Pos[0] 1000
execute store result score #sp.snap_z sp.data run data get entity @s Pos[2] 1000
scoreboard players operation #sp.snap_x sp.data /= #1000 sp.const
scoreboard players operation #sp.snap_x sp.data *= #1000 sp.const
scoreboard players add #sp.snap_x sp.data 500
scoreboard players operation #sp.snap_z sp.data /= #1000 sp.const
scoreboard players operation #sp.snap_z sp.data *= #1000 sp.const
scoreboard players add #sp.snap_z sp.data 500
execute store result entity @s Pos[0] double 0.001 run scoreboard players get #sp.snap_x sp.data
execute store result entity @s Pos[2] double 0.001 run scoreboard players get #sp.snap_z sp.data
