
tag @s add processing_item

execute as @e[type=marker,tag=active_net,sort=nearest,limit=1] run function mineraft:raft_extension/collection_net/active_net/check_can_add

tag @s[tag=processing_item] remove processing_item