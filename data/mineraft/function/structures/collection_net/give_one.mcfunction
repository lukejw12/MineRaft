$execute as @e[type=item_display,tag=mr.net_display,sort=nearest,limit=1] run data modify storage mineraft:net temp_item set from entity @s data.items[$(current_index)]

function mineraft:structures/collection_net/drop_item with storage mineraft:net