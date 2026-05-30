execute as @e[type=item_display,tag=mr.foundation_armor_display,distance=..1,limit=1] if data entity @s data.placed_item unless entity @p[distance=..10,gamemode=creative] run function mineraft:core/return_item
kill @e[type=item_display,tag=mr.foundation_armor_display,distance=..1,limit=1]
function mineraft:core/break_structure
fill ~1 62 ~1 ~-1 61 ~-1 water
kill @s
