scoreboard players set #slot_free mr.data 1
execute as @e[type=item_display,tag=mr.surface,distance=..1.5,limit=1,sort=nearest] run function mineraft:grid/block/is_any_occupied
execute if score #slot_free mr.data matches 0 run return fail

execute if entity @e[type=item_display,tag=mr.center,distance=..1] run return fail
execute if entity @e[type=item_display,tag=mr.net_display,distance=..1] run return fail

function mineraft:structures/collection_net/models/get_model

fill ~1 62 ~1 ~-1 61 ~-1 barrier[waterlogged=true]
setblock ~ ~ ~ water
setblock ~ ~-1 ~ water
function mineraft:structures/collection_net/spawn/display with storage mineraft:net

summon interaction ~0.5 62.5 ~0.5 {width:1.05f,height:0.5f,Tags:["mr.collection_net","mr.net_interaction","mr.new_interaction"]}

execute as @e[type=item_display,tag=mr.new_net,limit=1] store result score @s mr.net_id run scoreboard players add #global mr.net_id 1
execute as @e[type=item_display,tag=mr.new_net,limit=1] run data modify entity @s data.net_type set from storage mineraft:net net_type
execute as @e[type=item_display,tag=mr.new_net,limit=1] run data modify entity @s data.items set value []
execute as @e[type=item_display,tag=mr.new_net,limit=1] if data entity @s {data:{net_type:"simple_collection_net"}} run scoreboard players set @s mr.net_items 0
execute as @e[type=item_display,tag=mr.new_net,limit=1] if data entity @s {data:{net_type:"simple_collection_net"}} run data modify entity @s data.capacity set value 10
execute as @e[type=item_display,tag=mr.new_net,limit=1] if data entity @s {data:{net_type:"advanced_collection_net"}} run scoreboard players set @s mr.net_items 0
execute as @e[type=item_display,tag=mr.new_net,limit=1] if data entity @s {data:{net_type:"advanced_collection_net"}} run data modify entity @s data.capacity set value 15
execute as @e[type=item_display,tag=mr.new_net,limit=1] run data modify entity @s data.items set value []
execute as @e[type=item_display,tag=mr.new_net,limit=1] run data modify entity @s data.display_items set value []
execute as @e[type=interaction,tag=mr.new_interaction,limit=1] run scoreboard players operation @s mr.net_id = @e[type=item_display,tag=mr.new_net,limit=1] mr.net_id

execute as @e[type=item_display,tag=mr.new_net,limit=1] run function mineraft:core/structure/store_item
tag @e[type=item_display,tag=mr.new_net] remove mr.new_net
tag @e[type=interaction,tag=mr.new_interaction] remove mr.new_interaction

function mineraft:core/structure/cache_item
execute as @a if score @s mr.link = #player_link mr.data unless entity @s[gamemode=creative] run item modify entity @s weapon.mainhand mineraft:remove_one

playsound block.anvil.use block @a[distance=..10] ~ ~ ~ 100 2 1

data modify storage mineraft:grid type set value "collection_net"
data modify storage mineraft:grid h set value 2
execute as @e[type=item_display,tag=mr.surface,distance=..2,limit=1,sort=nearest] run function mineraft:grid/block/claim_all with storage mineraft:grid
