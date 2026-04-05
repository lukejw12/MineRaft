
data modify storage mineraft:grid block1_offset_x set from entity @s data.block1_offset_x
data modify storage mineraft:grid block1_offset_z set from entity @s data.block1_offset_z

function mineraft:grid/block/compute_slot_at_pos

execute store result score #off_x mr.data run data get storage mineraft:grid block1_offset_x
execute store result score #off_z mr.data run data get storage mineraft:grid block1_offset_z
scoreboard players operation #slot2_x mr.data = #slot_x mr.data
scoreboard players operation #slot2_x mr.data += #off_x mr.data
scoreboard players operation #slot2_z mr.data = #slot_z mr.data
scoreboard players operation #slot2_z mr.data += #off_z mr.data
execute store result storage mineraft:grid slot2_x int 1 run scoreboard players get #slot2_x mr.data
execute store result storage mineraft:grid slot2_z int 1 run scoreboard players get #slot2_z mr.data

execute at @s as @e[type=item_display,tag=mr.surface,distance=..3,limit=1,sort=nearest] run function mineraft:grid/block/release_pair with storage mineraft:grid
