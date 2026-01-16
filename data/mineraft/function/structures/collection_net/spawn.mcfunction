setblock ~ ~ ~ barrier

function mineraft:structures/collection_net/spawn_display with storage mineraft:net

summon interaction ~ ~0.5 ~ {width:3.05f,height:1.05f,Tags:["mr.collection_net","mr.net_interaction","mr.new_interaction"]}

execute as @e[type=item_display,tag=mr.new_display,limit=1] store result score @s mr.net_id run scoreboard players add #global mr.net_id 1
execute as @e[type=interaction,tag=mr.new_interaction,limit=1] run scoreboard players operation @s mr.net_id = @e[type=item_display,tag=mr.new_display,limit=1] mr.net_id

execute as @e[type=item_display,tag=mr.new_display,limit=1] run data modify entity @s data.net_type set from storage mineraft:net net_type
execute as @e[type=item_display,tag=mr.new_display,limit=1] run data modify entity @s data.items set value []
execute as @e[type=item_display,tag=mr.new_display,limit=1] if data entity @s {data:{net_type:"simple_collection_net"}} run scoreboard players set @s mr.net_items 0
execute as @e[type=item_display,tag=mr.new_display,limit=1] if data entity @s {data:{net_type:"simple_collection_net"}} run data modify entity @s data.capacity set value 10
execute as @e[type=item_display,tag=mr.new_display,limit=1] if data entity @s {data:{net_type:"advanced_collection_net"}} run scoreboard players set @s mr.net_items 0
execute as @e[type=item_display,tag=mr.new_display,limit=1] if data entity @s {data:{net_type:"advanced_collection_net"}} run data modify entity @s data.capacity set value 15

tag @e[type=item_display,tag=mr.new_display] remove mr.new_display
tag @e[type=interaction,tag=mr.new_interaction] remove mr.new_interaction