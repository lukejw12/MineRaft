$data remove entity @s data.grid.b$(slot_x)_$(slot_z)
execute if score #slot2_x mr.data matches 0..2 if score #slot2_z mr.data matches 0..2 run function mineraft:grid/block/release_secondary with storage mineraft:grid
