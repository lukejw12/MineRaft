scoreboard players set #sp.sailing sp.data 1
function sailing_physics:movement/compute_center
execute as @e[tag=sp.raft_entity,tag=mr.foundation] at @s run function sailing_physics:docking/snap_position
function sailing_physics:docking/recompute_and_reposition
kill @e[tag=sp.vehicle]
function sailing_physics:collision/cleanup
function mineraft:grid/reindex
execute as @e[type=item_display,tag=mr.root] at @s run function mineraft:structure/hook/run {h:"sail_exit"}
execute as @e[tag=sp.raft_entity,type=#sailing_physics:display] run data merge entity @s {teleport_duration:0}
tag @e[tag=sp.raft_entity] remove sp.raft_entity
tag @a[tag=sp.steering_tag] remove sp.steering_tag
tag @a[tag=sp.captain] remove sp.captain
scoreboard players set #sp.sailing sp.data 0
scoreboard players set #sp.steering sp.data 0
execute as @a run function sailing_physics:movement/carry_stop
