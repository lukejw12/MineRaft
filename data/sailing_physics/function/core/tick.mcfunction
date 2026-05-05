execute if score #sp.sailing sp.data matches 0 run return 0
execute if score #sp.cooldown sp.data matches 1.. run scoreboard players remove #sp.cooldown sp.data 1
scoreboard players set #sp.vx sp.data 0
scoreboard players set #sp.vz sp.data 0
execute as @a[tag=sp.captain] at @s run function sailing_physics:controls/detect
execute if score #sp.steering sp.data matches 1 run function sailing_physics:movement/apply_velocity
function sailing_physics:movement/push_passengers
execute as @e[tag=sp.raft_entity] run function sailing_physics:movement/update_single
function sailing_physics:movement/tp_vehicle
function sailing_physics:collision/update
