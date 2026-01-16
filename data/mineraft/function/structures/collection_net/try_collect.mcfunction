execute store result score #capacity mr.data run data get entity @s data.capacity
execute if score @s mr.net_items >= #capacity mr.data run return fail

data modify storage mineraft:net collected_item set from entity @e[type=item,sort=nearest,limit=1] Item
data modify entity @s data.items append from storage mineraft:net collected_item

scoreboard players add @s mr.net_items 1

function mineraft:structures/collection_net/display/update

particle minecraft:splash ~ ~0.5 ~ 0.3 0.1 0.3 0 10
playsound minecraft:entity.item.pickup block @a ~ ~ ~ 0.5 1.2

kill @e[type=item,sort=nearest,limit=1]