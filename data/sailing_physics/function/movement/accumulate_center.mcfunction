execute store result score #sp.tmp_x sp.data run data get entity @s Pos[0] 1000
execute store result score #sp.tmp_z sp.data run data get entity @s Pos[2] 1000
scoreboard players operation #sp.center_x sp.data += #sp.tmp_x sp.data
scoreboard players operation #sp.center_z sp.data += #sp.tmp_z sp.data
scoreboard players add #sp.fcount sp.data 1
