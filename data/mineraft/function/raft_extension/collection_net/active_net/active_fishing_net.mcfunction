

execute unless block ~ ~ ~ #valid_center_blocks run kill @e[type=item_display,distance=..1,sort=nearest,limit=1,tag=collection_net_facade]
execute unless block ~ ~ ~ #valid_center_blocks run kill @e[type=interaction,distance=..1,sort=nearest,limit=1,tag=collection_net_interact]
execute unless block ~ ~ ~ #valid_center_blocks run fill ~1 ~ ~1 ~-1 ~ ~-1 water
execute unless block ~ ~ ~ #valid_center_blocks run setblock ~ ~-1 ~ water replace
execute unless block ~ ~ ~ #valid_center_blocks run kill @s

execute as @e[type=item,tag=resources,distance=..3] at @s run function mineraft:raft_extension/collection_net/active_net/process_item