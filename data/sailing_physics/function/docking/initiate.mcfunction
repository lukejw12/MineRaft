execute as @e[tag=sp.raft_entity,tag=mr.foundation] at @s run function sailing_physics:docking/snap_position
function sailing_physics:docking/recompute_and_reposition
function sailing_physics:collision/check_terrain
execute if score #sp.terrain_ok sp.data matches 0 run return run tellraw @a[tag=sp.captain] {"text":"Cannot dock here - terrain collision detected!","color":"red"}
function sailing_physics:state/exit
