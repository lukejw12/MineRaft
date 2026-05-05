tag @s add sp.raft_entity
execute store result score #sp.tmp_x sp.data run data get entity @s Pos[0] 1000
execute store result score #sp.tmp_y sp.data run data get entity @s Pos[1] 1000
execute store result score #sp.tmp_z sp.data run data get entity @s Pos[2] 1000
scoreboard players operation #sp.tmp_x sp.data -= #sp.center_x sp.data
scoreboard players operation #sp.tmp_z sp.data -= #sp.center_z sp.data
function sailing_physics:movement/store_scores
