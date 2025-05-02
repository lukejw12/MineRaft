#Run a function if a block was successfully detected.

execute unless block ~ ~ ~ #minecraft:blocks run function mineraft:raft_extension/hit_block
scoreboard players add #distance raft_extension 1

#Advance forward and run the ray again if no entity and/or block was found.

execute if score #hit raft_extension matches 0 if score #distance raft_extension matches ..60 positioned ^ ^ ^0.1 run function mineraft:raft_extension/ray