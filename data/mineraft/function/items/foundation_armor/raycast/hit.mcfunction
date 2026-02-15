scoreboard players operation #player_link mr.data = @s mr.link
execute if entity @e[type=item_display,tag=mr.net_display,distance=..2,limit=1] run function mineraft:items/foundation_armor/place {"model":"raft_items:structures/armor/net"}
execute unless entity @e[type=item_display,tag=mr.net_display,distance=..2,limit=1] run function mineraft:items/foundation_armor/place {"model":"raft_items:structures/armor/foundation"}
kill @s