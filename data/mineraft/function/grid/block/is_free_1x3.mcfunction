execute unless data entity @s data.grid run function mineraft:grid/core/init
scoreboard players set #slot_free mr.data 1
$execute if score #slot_x mr.data matches 0..2 if score #slot_z mr.data matches 0..2 if data entity @s data.grid.b$(slot_x)_$(slot_z) run scoreboard players set #slot_free mr.data 0
$execute if score #slot2_x mr.data matches 0..2 if score #slot2_z mr.data matches 0..2 if data entity @s data.grid.b$(slot2_x)_$(slot2_z) run scoreboard players set #slot_free mr.data 0
$execute if score #slot3_x mr.data matches 0..2 if score #slot3_z mr.data matches 0..2 if data entity @s data.grid.b$(slot3_x)_$(slot3_z) run scoreboard players set #slot_free mr.data 0
