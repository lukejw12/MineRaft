execute if score @s mr.count matches ..0 run return fail
tag @a[tag=mr.interacting] add mr.net_emptying
data modify storage mineraft:tmp net set from entity @s data.items
execute as @a[tag=mr.interacting,limit=1] run function mineraft:structure/collection_net/give_loop
tag @a[tag=mr.net_emptying] remove mr.net_emptying
scoreboard players operation #net.id mr.data = @s mr.id
execute as @e[type=item_display,tag=mr.p.net_item,distance=..3] if score @s mr.id = #net.id mr.data run kill @s
data modify entity @s data.items set value []
data modify entity @s data.display_items set value []
scoreboard players set @s mr.count 0
particle minecraft:splash ~ ~0.7 ~ 0.3 0.3 0.3 0 10
playsound block.cobweb.step player @a[tag=mr.interacting] ~ ~ ~ 1 1
