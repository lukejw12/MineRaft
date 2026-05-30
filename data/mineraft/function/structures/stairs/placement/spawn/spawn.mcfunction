function mineraft:structures/stairs/placement/models/get

execute positioned ~ ~0.54 ~ run function mineraft:structures/stairs/placement/spawn/shulkers with storage mineraft:stairs
execute positioned ~ ~ ~ run function mineraft:structures/stairs/placement/spawn/display with storage mineraft:stairs

execute as @e[type=item_display,tag=mr.new_stairs,limit=1] run data modify entity @s data.stairs_type set from storage mineraft:stairs stairs_type
execute as @e[type=item_display,tag=mr.new_stairs,limit=1] run data modify entity @s data.stairs_id set from storage mineraft:stairs stairs_id
execute as @e[type=item_display,tag=mr.new_stairs,limit=1] store result score @s mr.stairs_id run data get storage mineraft:stairs stairs_id
execute as @e[type=item_display,tag=mr.new_stairs,limit=1] run data modify entity @s data.block1_offset_x set from storage mineraft:stairs offset_x
execute as @e[type=item_display,tag=mr.new_stairs,limit=1] run data modify entity @s data.block1_offset_z set from storage mineraft:stairs offset_z

execute as @e[type=item_display,tag=mr.new_stairs,limit=1] run function mineraft:core/structure/store_item
tag @e[type=item_display,tag=mr.new_stairs] remove mr.new_stairs

execute as @e[type=item_display,tag=mr.stairs_display,sort=nearest,limit=1,distance=..1] at @s run function mineraft:grid/core/register_stairs_edge

data modify storage mineraft:grid type set value "stairs"
data modify storage mineraft:grid h set value 3
execute positioned ~0.5 ~-1 ~0.5 as @e[type=item_display,tag=mr.surface,distance=..3,limit=1,sort=nearest] run function mineraft:grid/block/claim_1x3 with storage mineraft:grid

function mineraft:core/structure/cache_item
execute as @a if score @s mr.link = #player_link mr.data unless entity @s[gamemode=creative] run clear @s *[custom_data~{mr.stairs:1b}] 1

playsound block.anvil.use block @a[distance=..10] ~ ~ ~ 100 2 1

execute at @s run function mineraft:grid/block/claim_adjacent_1x3
