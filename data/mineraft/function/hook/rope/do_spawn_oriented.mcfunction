$tp @e[tag=hp.rot_helper,limit=1] $(cx) $(cy) $(cz) facing $(nx) $(ny) $(nz)
execute store result storage mineraft:hook/spawn yaw int 1 run data get entity @e[tag=hp.rot_helper,limit=1] Rotation[0]
execute store result storage mineraft:hook/spawn pitch int 1 run data get entity @e[tag=hp.rot_helper,limit=1] Rotation[1]
function mineraft:hook/rope/do_summon_rope with storage mineraft:hook/spawn
