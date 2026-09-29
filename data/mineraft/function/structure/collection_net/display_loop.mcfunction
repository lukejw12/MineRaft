summon item_display ~ ~0.5 ~ {Tags:["mr.part","mr.p.net_item","mr.new_net_item"],item_display:"ground"}
data modify entity @e[type=item_display,tag=mr.new_net_item,limit=1] item set from storage mineraft:tmp net[0]
scoreboard players operation @e[type=item_display,tag=mr.new_net_item,limit=1] mr.id = #net.id mr.data
execute as @e[type=item_display,tag=mr.new_net_item,limit=1] run function mineraft:structure/collection_net/place_item
particle minecraft:splash ~ ~1 ~ 0.3 0.1 0.3 0 1
execute if score #sp.sailing sp.data matches 1 as @e[type=item_display,tag=mr.new_net_item] run function sailing_physics:movement/store_single
tag @e[type=item_display,tag=mr.new_net_item] remove mr.new_net_item
scoreboard players add #net.i mr.data 1
data remove storage mineraft:tmp net[0]
execute if data storage mineraft:tmp net[0] run function mineraft:structure/collection_net/display_loop
