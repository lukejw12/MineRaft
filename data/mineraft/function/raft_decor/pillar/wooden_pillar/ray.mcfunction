#Run a function if a block was successfully detected.

execute unless block ~ ~ ~ #minecraft:blocks run function mineraft:raft_decor/pillar/wooden_pillar/hit_block
scoreboard players add #distance wooden_support 1

#Advance forward and run the ray again if no entity and/or block was found.

execute if score #hit wooden_support matches 0 if score #distance wooden_support matches ..60 positioned ^ ^ ^0.1 run function mineraft:raft_decor/pillar/wooden_pillar/ray