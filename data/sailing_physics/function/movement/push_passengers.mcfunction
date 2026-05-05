scoreboard players operation #sp.push_x sp.data = #sp.vx sp.data
scoreboard players operation #sp.push_x sp.data *= #push_scale sp.const
scoreboard players operation #sp.push_x sp.data /= #push_div sp.const

scoreboard players operation #sp.push_z sp.data = #sp.vz sp.data
scoreboard players operation #sp.push_z sp.data *= #push_scale sp.const
scoreboard players operation #sp.push_z sp.data /= #push_div sp.const

execute if score #sp.push_x sp.data matches 0 if score #sp.push_z sp.data matches 0 run return 0

execute as @a[tag=!sp.steering_tag] at @s if entity @e[tag=sp.raft_entity,distance=..4] run function sailing_physics:movement/push_single_passenger
