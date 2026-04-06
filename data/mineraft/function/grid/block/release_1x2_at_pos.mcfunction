#> mineraft:grid/block/release_1x2_at_pos
#  Releases the PRIMARY grid slot of a 1x2 structure.
#  Run as the display entity before it's killed.

function mineraft:grid/block/compute_slot_at_pos
execute at @s as @e[type=item_display,tag=mr.surface,distance=..3,limit=1,sort=nearest] run function mineraft:grid/block/release with storage mineraft:grid
