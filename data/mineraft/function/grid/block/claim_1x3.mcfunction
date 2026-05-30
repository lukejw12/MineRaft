$execute if score #slot_x mr.data matches 0..2 if score #slot_z mr.data matches 0..2 run data modify entity @s data.grid.b$(slot_x)_$(slot_z) set value {type:"$(type)", h:$(h)}
$execute if score #slot2_x mr.data matches 0..2 if score #slot2_z mr.data matches 0..2 run data modify entity @s data.grid.b$(slot2_x)_$(slot2_z) set value {type:"$(type)", h:$(h)}
$execute if score #slot3_x mr.data matches 0..2 if score #slot3_z mr.data matches 0..2 run data modify entity @s data.grid.b$(slot3_x)_$(slot3_z) set value {type:"$(type)", h:$(h)}
