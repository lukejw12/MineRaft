scoreboard players operation #net.id mr.data = @s mr.id
execute as @e[type=item_display,tag=mr.p.net_item,distance=..3] if score @s mr.id = #net.id mr.data run kill @s
data modify storage mineraft:tmp net set from entity @s data.display_items
scoreboard players set #net.i mr.data 0
execute if data storage mineraft:tmp net[0] run function mineraft:structure/collection_net/display_loop
