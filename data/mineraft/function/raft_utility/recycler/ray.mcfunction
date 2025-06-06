execute unless block ~ ~ ~ #minecraft:blocks run function mineraft:raft_utility/recycler/hit_block
scoreboard players add #distance recycler 1
execute if score #hit recycler matches 0 if score #distance recycler matches ..60 positioned ^ ^ ^0.1 run function mineraft:raft_utility/recycler/ray