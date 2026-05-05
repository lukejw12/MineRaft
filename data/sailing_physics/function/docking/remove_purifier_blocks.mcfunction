fill ~ ~ ~ ~ ~ ~ air replace barrier
data modify storage mineraft:purifier block1_offset_x set from entity @s data.block1_offset_x
data modify storage mineraft:purifier block1_offset_z set from entity @s data.block1_offset_z
function sailing_physics:docking/remove_purifier_block1 with storage mineraft:purifier
