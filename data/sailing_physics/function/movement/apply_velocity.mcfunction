execute store result storage sailing_physics:temp deg int 1 run scoreboard players get #sp.heading sp.data
function sailing_physics:math/lookup with storage sailing_physics:temp
execute if score #sp.input_fwd sp.data matches 1 run function sailing_physics:movement/apply_forward
execute if score #sp.input_bwd sp.data matches 1 run function sailing_physics:movement/apply_backward
