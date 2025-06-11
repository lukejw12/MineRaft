execute unless block ~ ~ ~ #minecraft:blocks run function mineraft:raft_utility/receiver/hit_block
scoreboard players add #distance receiver 1
execute if score #hit receiver matches 0 if score #distance receiver matches ..60 positioned ^ ^ ^0.1 run function mineraft:raft_utility/receiver/ray