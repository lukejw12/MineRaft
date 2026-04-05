
function mineraft:grid/block/compute_slot_at_pos
execute at @s as @e[type=item_display,tag=mr.surface,distance=..3,limit=1,sort=nearest] run function mineraft:grid/block/release with storage mineraft:grid
