#Run a function if a block was successfully detected.

execute unless block ~ ~ ~ #minecraft:blocks run function mineraft:raft_utility/cooking_pot/hit_block
scoreboard players add #distance cooking_pot 1

#Advance forward and run the ray again if no entity and/or block was found.

execute if score #hit cooking_pot matches 0 if score #distance cooking_pot matches ..60 positioned ^ ^ ^0.1 run function mineraft:raft_utility/cooking_pot/ray