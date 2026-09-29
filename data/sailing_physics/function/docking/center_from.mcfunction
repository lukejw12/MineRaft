function sailing_physics:movement/read_nbt
execute store result score #sp.center_x sp.data run data get entity @s Pos[0] 1000
scoreboard players operation #sp.center_x sp.data -= #sp.lx sp.data
execute store result score #sp.center_z sp.data run data get entity @s Pos[2] 1000
scoreboard players operation #sp.center_z sp.data -= #sp.lz sp.data
