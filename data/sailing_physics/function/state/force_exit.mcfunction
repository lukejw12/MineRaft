execute as @a[tag=sp.captain] run ride @s dismount
kill @e[tag=sp.vehicle]
function sailing_physics:collision/cleanup
execute as @e[tag=sp.raft_entity,tag=mr.foundation] at @s run function sailing_physics:docking/snap_position
function sailing_physics:docking/recompute_and_reposition
function sailing_physics:docking/place_blocks
function sailing_physics:docking/update_grid
execute as @e[tag=sp.raft_entity,type=item_display] run data merge entity @s {teleport_duration:0}
tag @e[tag=sp.raft_entity] remove sp.raft_entity
tag @a[tag=sp.steering_tag] remove sp.steering_tag
tag @a[tag=sp.captain] remove sp.captain
scoreboard players set #sp.sailing sp.data 0
scoreboard players set #sp.steering sp.data 0
scoreboard players set #sp.cooldown sp.data 0
scoreboard players set #sp.prev_push_x sp.data 0
scoreboard players set #sp.prev_push_z sp.data 0
