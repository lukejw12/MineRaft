$execute as @e[type=item_display,tag=mr.net_display,sort=nearest,limit=1] run data modify storage mineraft:net flotsam_type set from entity @s data.items[$(current_index)]

function mineraft:structures/collection_net/references/items

execute as @a[tag=mr.net_emptying] run function mineraft:structures/collection_net/do_give with storage mineraft:net

