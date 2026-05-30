scoreboard players operation #campfire_id mr.data = @s mr.campfire_id
execute at @s run setblock ~ ~ ~ air
execute as @e[type=item_display,tag=mr.campfire_display] at @s if score @s mr.campfire_id = #campfire_id mr.data if entity @e[type=item_display,tag=mr.wall_display,distance=..3] run function mineraft:structures/campfire/utils/restore/wall_trapdoor
execute as @e[type=item_display,tag=mr.campfire_display] if score @s mr.campfire_id = #campfire_id mr.data at @s run function mineraft:grid/block/release_at_pos
execute as @e[type=item_display,tag=mr.campfire_display] if score @s mr.campfire_id = #campfire_id mr.data at @s run function mineraft:core/break_structure
kill @s
execute as @e[type=interaction,tag=mr.campfire_interaction] if score @s mr.campfire_id = #campfire_id mr.data run kill @s
