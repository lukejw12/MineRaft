summon item_display ~ ~0.3 ~ {item_display:"ground",Tags:["mr.net_item_display","mr.new_item_display"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},item:{id:"minecraft:stone",count:1}}

$data modify entity @e[type=item_display,tag=mr.new_item_display,limit=1] item set from entity @s data.items[$(item_index)]

execute as @e[type=item_display,tag=mr.new_item_display,limit=1] run scoreboard players operation @s mr.net_id = @e[type=item_display,tag=mr.net_display,sort=nearest,limit=1] mr.net_id

execute store result score #offset mr.data run scoreboard players get #display_count mr.data
function mineraft:structures/collection_net/display/position_item

tag @e[type=item_display,tag=mr.new_item_display] remove mr.new_item_display