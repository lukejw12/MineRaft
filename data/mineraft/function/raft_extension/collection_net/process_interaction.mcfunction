
scoreboard players operation #current_net temp = @s net_id

execute as @e[type=marker,tag=active_net] if score @s net_id = #current_net temp run tag @s add current_net

execute if data entity @s interaction run function mineraft:raft_extension/collection_net/handle_player_interaction
data remove entity @s interaction