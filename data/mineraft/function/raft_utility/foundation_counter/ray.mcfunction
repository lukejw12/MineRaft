execute unless block ~ ~ ~ #minecraft:blocks_for_counter run function mineraft:raft_utility/foundation_counter/hit_block
scoreboard players add #distance foundation_counter 1
execute if score #hit foundation_counter matches 0 if score #distance foundation_counter matches ..40 positioned ^ ^ ^0.1 run function mineraft:raft_utility/foundation_counter/ray
