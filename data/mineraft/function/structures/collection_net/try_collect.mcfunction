execute store result score #capacity mr.data run data get entity @s data.capacity
execute if score @s mr.net_items >= #capacity mr.data run return fail

execute if entity @e[type=item,tag=mr.flotsam,sort=nearest,limit=1,nbt={Item:{components:{"minecraft:custom_data":{mr.palm_leaf:1b}}}}] run data modify storage mineraft:net flotsam_type set value "palm_leaf"

data modify entity @s data.items append from storage mineraft:net flotsam_type

data modify storage mineraft:net collected_item set from entity @e[type=item,tag=mr.flotsam,sort=nearest,limit=1] Item
data modify entity @s data.display_items append from storage mineraft:net collected_item

scoreboard players add @s mr.net_items 1

function mineraft:structures/collection_net/update_display

playsound block.cobweb.fall block @a ~ ~ ~ 0.5 0.8

kill @e[type=item,tag=mr.flotsam,sort=nearest,limit=1]