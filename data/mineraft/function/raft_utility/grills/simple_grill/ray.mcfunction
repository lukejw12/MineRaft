#Run a function if a block was successfully detected.

execute unless block ~ ~ ~ #minecraft:blocks run function mineraft:raft_utility/grills/simple_grill/hit_block
scoreboard players add #distance simple_grill 1

#Advance forward and run the ray again if no entity and/or block was found.

execute if score #hit simple_grill matches 0 if score #distance simple_grill matches ..60 positioned ^ ^ ^0.1 run function mineraft:raft_utility/grills/simple_grill/ray