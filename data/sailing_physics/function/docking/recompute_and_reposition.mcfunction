execute as @e[tag=sp.raft_entity,tag=mr.foundation,limit=1] run function sailing_physics:docking/center_from
execute as @e[tag=sp.raft_entity] run function sailing_physics:movement/update_single
