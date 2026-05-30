scoreboard players operation #player_link mr.data = @s mr.link

data modify storage mineraft:stairs stairs_type set from entity @s data.stairs_type
scoreboard players operation #rotation mr.data = @s mr.data
function mineraft:structures/stairs/placement/models/calculate_rotation

data modify storage mineraft:grid block1_offset_x set from storage mineraft:stairs offset_x
data modify storage mineraft:grid block1_offset_z set from storage mineraft:stairs offset_z
function mineraft:grid/block/compute_slot_1x3
execute if score #slot_free mr.data matches 0 run return run kill @s

execute align xyz positioned ~ ~1 ~ run function mineraft:structures/stairs/placement/spawn/spawn

kill @s
