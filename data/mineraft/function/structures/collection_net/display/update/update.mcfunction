execute as @e[type=item_display,tag=mr.net_item_display] if score @s mr.net_id = @e[type=item_display,tag=mr.net_display,sort=nearest,limit=1] mr.net_id run kill @s

scoreboard players set #display_count mr.data 0
function mineraft:structures/collection_net/display/items/spawn_items