data modify storage sailing_physics:temp ox set from entity @s data.block1_offset_x
data modify storage sailing_physics:temp oz set from entity @s data.block1_offset_z
function sailing_physics:docking/do_remove_crop_block1 with storage sailing_physics:temp
