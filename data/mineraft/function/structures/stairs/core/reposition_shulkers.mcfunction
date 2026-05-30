scoreboard players operation #reposition_id mr.data = @s mr.stairs_id
execute as @e[type=item_display,tag=mr.stairs_shulker] if score @s mr.stairs_id = #reposition_id mr.data run function mineraft:structures/stairs/core/snap_shulker
