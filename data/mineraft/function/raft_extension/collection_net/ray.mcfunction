
execute unless block ~ ~ ~ #minecraft:blocks run function mineraft:raft_extension/collection_net/hit_block
scoreboard players add #distance raft_extension_net 1
execute if score #hit raft_extension_net matches 0 if score #distance raft_extension_net matches ..60 positioned ^ ^ ^0.1 run function mineraft:raft_extension/collection_net/ray