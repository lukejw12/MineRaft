scoreboard players operation #current_net temp = @s net_id
execute as @e[type=marker,tag=active_net] if score @s net_id = #current_net temp run tag @s add current_net
scoreboard players set #has_items temp 0
execute if entity @e[type=marker,tag=current_net,limit=1] store result score #has_items temp run data get entity @e[type=marker,tag=current_net,limit=1] data.ItemCount
execute if score #has_items temp matches 1.. as @p run function mineraft:raft_extension/collection_net/give_items_to_player
tag @e[tag=current_net] remove current_net