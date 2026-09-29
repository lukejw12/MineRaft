scoreboard players operation #sp.vx2 sp.data = #sp.center_x sp.data
scoreboard players operation #sp.m sp.data = #sp.vx2 sp.data
scoreboard players operation #sp.m sp.data %= #1000 mr.const
execute if score #sp.m sp.data matches 0 run scoreboard players add #sp.vx2 sp.data 1
scoreboard players operation #sp.vz2 sp.data = #sp.center_z sp.data
scoreboard players operation #sp.m sp.data = #sp.vz2 sp.data
scoreboard players operation #sp.m sp.data %= #1000 mr.const
execute if score #sp.m sp.data matches 0 run scoreboard players add #sp.vz2 sp.data 1
execute store result storage sailing_physics:temp x double 0.001 run scoreboard players get #sp.vx2 sp.data
execute store result storage sailing_physics:temp z double 0.001 run scoreboard players get #sp.vz2 sp.data
function sailing_physics:movement/do_tp_vehicle with storage sailing_physics:temp
