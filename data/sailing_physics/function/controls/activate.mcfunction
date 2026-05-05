advancement revoke @s only sailing_physics:controls/use_steering_wheel
execute if score #sp.cooldown sp.data matches 1.. run return 0
execute if score #sp.sailing sp.data matches 0 run return run function sailing_physics:state/enter
execute if score #sp.sailing sp.data matches 1 if predicate sailing_physics:input_sneak run return run function sailing_physics:docking/initiate
execute if score #sp.steering sp.data matches 0 run return run function sailing_physics:controls/start_steering
function sailing_physics:controls/start_walking
