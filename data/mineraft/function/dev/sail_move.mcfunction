$scoreboard players set #sm.x mr.data $(x)
$scoreboard players set #sm.z mr.data $(z)
scoreboard players operation #sp.center_x sp.data += #sm.x mr.data
scoreboard players operation #sp.center_z sp.data += #sm.z mr.data
execute as @e[tag=sp.raft_entity] run function sailing_physics:movement/update_single
function mineraft:sail/offset
