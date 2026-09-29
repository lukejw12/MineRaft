execute as @e[tag=sp.raft_entity,tag=mr.foundation] at @s run function sailing_physics:docking/snap_position
function sailing_physics:docking/recompute_and_reposition
function mineraft:grid/reindex
execute as @e[type=item_display,tag=mr.root] at @s run function mineraft:structure/hook/run {h:"sail_exit"}
scoreboard players set #sp.sailing sp.data 0
