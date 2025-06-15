execute if entity @e[type=interaction,tag=collection_net_interact,distance=..1] run function mineraft:ui/collection_net/hit_collection_net

execute unless score #ui_hit raft_extension_net matches 1 if score #ui_distance raft_extension_net matches ..25 positioned ^ ^ ^0.2 run function mineraft:ui/collection_net/raycast

scoreboard players add #ui_distance raft_extension_net 1