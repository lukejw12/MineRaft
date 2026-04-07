
$data modify entity @s data.grid.b$(slot_x)_$(slot_z) set value {type:"$(type)"}
execute if score #slot2_x mr.data matches 0..2 if score #slot2_z mr.data matches 0..2 run function mineraft:grid/block/claim_secondary with storage mineraft:grid
