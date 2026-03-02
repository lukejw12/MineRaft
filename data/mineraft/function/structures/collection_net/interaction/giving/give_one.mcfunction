$execute as @e[type=item_display,tag=mr.net_display,sort=nearest,limit=1] run data modify storage mineraft:give item_type set from entity @s data.items[$(current_index)]

execute as @a[tag=mr.net_emptying] run function mineraft:core/give_item