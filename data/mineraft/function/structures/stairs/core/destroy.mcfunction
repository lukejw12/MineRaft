scoreboard players operation #stairs_id mr.data = @s mr.stairs_id

execute at @s run function mineraft:grid/core/unregister_stairs_edge

data modify storage mineraft:grid block1_offset_x set from entity @s data.block1_offset_x
data modify storage mineraft:grid block1_offset_z set from entity @s data.block1_offset_z
execute at @s positioned ~ ~-1 ~ run function mineraft:grid/block/release_1x3_at_pos
execute at @s positioned ~ ~-1 ~ run function mineraft:grid/block/release_adjacent_1x3_from_entity

execute as @e[type=item_display,tag=mr.stairs_shulker] if score @s mr.stairs_id = #stairs_id mr.data on passengers run tp @s ~ -500 ~
execute as @e[type=item_display,tag=mr.stairs_shulker] if score @s mr.stairs_id = #stairs_id mr.data run kill @s
kill @e[type=shulker,y=-500,dy=10]

function mineraft:core/break_structure

kill @s
