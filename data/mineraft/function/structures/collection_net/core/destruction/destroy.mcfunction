function mineraft:core/break_structure
scoreboard players operation #net_id mr.data = @s mr.net_id
kill @e[type=item_display,tag=mr.foundation_armor_display,distance=..1,limit=1]
execute as @e[type=item_display,tag=mr.net_item_display] if score @s mr.net_id = #net_id mr.data run kill @s
execute as @e[type=item_display,tag=mr.surface,distance=..1.5,limit=1,sort=nearest] run function mineraft:grid/block/release_all
execute as @e[type=interaction,tag=mr.net_interaction] if score @s mr.net_id = #net_id mr.data run kill @s

fill ~1 62 ~1 ~-1 61 ~-1 water

kill @s
