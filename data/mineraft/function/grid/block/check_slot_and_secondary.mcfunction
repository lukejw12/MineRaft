#> mineraft:grid/block/check_slot_and_secondary
#  For 1x2 structures. Checks primary slot via grid.
#  If secondary slot is in range 0-2 (same cell), also checks it.
#  Run as a surface entity. Uses #hit_bx/#hit_bz and block1_offset from mineraft:grid.

execute unless data entity @s data.grid.cx run function mineraft:grid/core/init

execute store result score #surface_x mr.data run data get entity @s data.grid.cx
execute store result score #surface_z mr.data run data get entity @s data.grid.cz

# Primary slot
scoreboard players operation #slot_x mr.data = #hit_bx mr.data
scoreboard players operation #slot_x mr.data -= #surface_x mr.data
scoreboard players add #slot_x mr.data 1

scoreboard players operation #slot_z mr.data = #hit_bz mr.data
scoreboard players operation #slot_z mr.data -= #surface_z mr.data
scoreboard players add #slot_z mr.data 1

execute store result storage mineraft:grid slot_x int 1 run scoreboard players get #slot_x mr.data
execute store result storage mineraft:grid slot_z int 1 run scoreboard players get #slot_z mr.data

# Check primary
scoreboard players set #slot_free mr.data 1
$execute if data entity @s data.grid.b$(slot_x)_$(slot_z) run scoreboard players set #slot_free mr.data 0
execute if score #slot_free mr.data matches 0 run return fail

# Secondary slot — only check if in same cell
execute store result score #off_x mr.data run data get storage mineraft:grid block1_offset_x
execute store result score #off_z mr.data run data get storage mineraft:grid block1_offset_z
scoreboard players operation #slot2_x mr.data = #slot_x mr.data
scoreboard players operation #slot2_x mr.data += #off_x mr.data
scoreboard players operation #slot2_z mr.data = #slot_z mr.data
scoreboard players operation #slot2_z mr.data += #off_z mr.data

execute store result storage mineraft:grid slot2_x int 1 run scoreboard players get #slot2_x mr.data
execute store result storage mineraft:grid slot2_z int 1 run scoreboard players get #slot2_z mr.data

# If secondary in range, check it too
execute if score #slot2_x mr.data matches 0..2 if score #slot2_z mr.data matches 0..2 run function mineraft:grid/block/check_secondary with storage mineraft:grid
