scoreboard players operation #player_link mr.data = @s mr.link
execute if entity @e[type=item_display,tag=mr.net_display,distance=..2,limit=1] run data modify storage mineraft:armor_preview model set value "raft_items:structures/armor/net"
execute unless entity @e[type=item_display,tag=mr.net_display,distance=..2,limit=1] run data modify storage mineraft:armor_preview model set value "raft_items:structures/armor/foundation"
execute as @a if score @s mr.link = #player_link mr.data unless entity @e[type=item_display,tag=mr.armor_preview] if score @s mr.link = #player_link mr.data run function mineraft:items/foundation_armor/raycast/preview/spawn with storage mineraft:armor_preview
execute as @e[type=item_display,tag=mr.armor_preview] if score @s mr.link = #player_link mr.data run function mineraft:items/foundation_armor/raycast/preview/update with storage mineraft:armor_preview
kill @s