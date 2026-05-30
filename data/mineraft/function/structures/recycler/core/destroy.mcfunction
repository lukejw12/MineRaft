scoreboard players operation #recycler_id mr.data = @s mr.recycler_id

execute at @s run setblock ~ ~ ~ air
execute at @s run setblock ~ ~1 ~ air
execute as @e[type=item_display,tag=mr.recycler_display] at @s if score @s mr.recycler_id = #recycler_id mr.data if entity @e[type=item_display,tag=mr.wall_display,distance=..3] run function mineraft:structures/recycler/utils/restore/wall_trapdoor

execute as @e[type=item_display,tag=mr.recycler_display] if score @s mr.recycler_id = #recycler_id mr.data at @s run function mineraft:grid/block/release_at_pos

execute as @e[type=item_display,tag=mr.recycler_display,distance=..2,limit=1,sort=nearest] at @s run function mineraft:core/break_structure
kill @s
execute as @e[type=interaction,tag=mr.recycler_interaction] if score @s mr.recycler_id = #recycler_id mr.data run kill @s

