execute as @e[tag=net_full] at @s run particle heart ~ ~2 ~ 0 0 0 0.01 0 force
execute as @e[tag=net_full] at @s run tag @s remove net_full
schedule clear mineraft:raft_extension/collection_net/active_net/particle