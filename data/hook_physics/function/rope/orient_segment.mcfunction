$tp @e[tag=hp.rot_helper,limit=1] $(cx) $(cy) $(cz) facing $(nx) $(ny) $(nz)
$tp @s $(cx) $(cy) $(cz)
data modify entity @s Rotation set from entity @e[tag=hp.rot_helper,limit=1] Rotation
data modify entity @s transformation.scale[1] set from storage hook_physics:rope seg_len
data modify entity @s transformation.translation[2] set from storage hook_physics:rope half_seg
