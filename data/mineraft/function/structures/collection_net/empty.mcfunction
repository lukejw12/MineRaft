execute if score @s mr.net_items matches 0 run return fail

execute store result storage mineraft:net give_count int 1 run scoreboard players get @s mr.net_items
function mineraft:structures/collection_net/give_items with storage mineraft:net

execute as @e[type=item_display,tag=mr.net_item_display] if score @s mr.net_id = @e[type=item_display,tag=mr.net_display,sort=nearest,limit=1] mr.net_id run kill @s

data modify entity @s data.items set value []
scoreboard players set @s mr.net_items 0

particle minecraft:happy_villager ~ ~0.5 ~ 0.3 0.3 0.3 0 10
playsound minecraft:entity.item.pickup player @a[tag=mr.net_emptying] ~ ~ ~ 1 1