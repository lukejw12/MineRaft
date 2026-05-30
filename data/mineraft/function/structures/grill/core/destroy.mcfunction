scoreboard players operation #grill_id mr.data = @s mr.grill_id

execute at @s run setblock ~ ~ ~ air
execute as @e[type=item_display,tag=mr.grill_display] at @s if score @s mr.grill_id = #grill_id mr.data if entity @e[type=item_display,tag=mr.wall_display,distance=..3] run function mineraft:structures/grill/utils/restore/wall_trapdoor

execute as @e[type=item_display,tag=mr.grill_display] if score @s mr.grill_id = #grill_id mr.data at @s run function mineraft:grid/block/release_at_pos

execute as @e[type=item_display,tag=mr.grill_display] if score @s mr.grill_id = #grill_id mr.data at @s run function mineraft:core/break_structure
kill @s
execute as @e[type=item_display,tag=mr.grill_fuel_display] if score @s mr.grill_id = #grill_id mr.data run kill @s
execute as @e[type=interaction,tag=mr.grill_interaction] if score @s mr.grill_id = #grill_id mr.data run kill @s

