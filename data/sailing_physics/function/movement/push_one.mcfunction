execute if score #sp.carry_mode sp.const matches 1 run return run function sailing_physics:movement/carry_player
tag @s add sp.carried
execute unless score #sp.push_x sp.data matches 0 run return run function sailing_physics:movement/push_single_passenger
execute unless score #sp.push_z sp.data matches 0 run function sailing_physics:movement/push_single_passenger
