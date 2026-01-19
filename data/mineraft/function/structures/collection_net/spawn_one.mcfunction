execute as @e[type=interaction,tag=mr.net_interaction] if score @s mr.net_id = @e[type=item_display,tag=mr.net_display,sort=nearest,limit=1] mr.net_id at @s run summon item_display ~ ~-0.2 ~ {item_display:"ground",Tags:["mr.net_item_display","mr.new_item_display"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:stone",count:1}}

$data modify entity @e[type=item_display,tag=mr.new_item_display,limit=1] item set from entity @s data.display_items[$(item_index)]

execute as @e[type=item_display,tag=mr.new_item_display,limit=1] run scoreboard players operation @s mr.net_id = @e[type=item_display,tag=mr.net_display,sort=nearest,limit=1] mr.net_id

execute store result score #offset mr.data run scoreboard players get #display_count mr.data
execute as @e[type=interaction,tag=mr.net_interaction] if score @s mr.net_id = @e[type=item_display,tag=mr.net_display,sort=nearest,limit=1] mr.net_id at @s run function mineraft:structures/collection_net/position_item
execute as @e[type=interaction,tag=mr.net_interaction] if score @s mr.net_id = @e[type=item_display,tag=mr.net_display,sort=nearest,limit=1] mr.net_id at @s run particle minecraft:splash ~ ~0.5 ~ 0.3 0.1 0.3 0 1

tag @e[type=item_display,tag=mr.new_item_display] remove mr.new_item_display