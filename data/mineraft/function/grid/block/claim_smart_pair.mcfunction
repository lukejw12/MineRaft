#> mineraft:grid/block/claim_smart_pair
#  Claims primary slot always. Claims secondary only if in range 0-2.
#  Run as surface entity. Uses slot_x/z and slot2_x/z from mineraft:grid.

$data modify entity @s data.grid.b$(slot_x)_$(slot_z) set value {type:"$(type)"}
execute if score #slot2_x mr.data matches 0..2 if score #slot2_z mr.data matches 0..2 run function mineraft:grid/block/claim_secondary with storage mineraft:grid
