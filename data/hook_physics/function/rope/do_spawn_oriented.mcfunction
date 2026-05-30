$tp @e[tag=hp.rot_helper,limit=1] $(cx) $(cy) $(cz) facing $(nx) $(ny) $(nz)
execute store result storage hook_physics:spawn yaw int 1 run data get entity @e[tag=hp.rot_helper,limit=1] Rotation[0]
execute store result storage hook_physics:spawn pitch int 1 run data get entity @e[tag=hp.rot_helper,limit=1] Rotation[1]
function hook_physics:rope/do_summon_rope with storage hook_physics:spawn
