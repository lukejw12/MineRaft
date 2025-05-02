#Run a function if a block was successfully detected.

execute unless block ~ ~ ~ #minecraft:blocks run function mineraft:raft_utility/rain_collector/hit_block
scoreboard players add #distance rain_collector 1

#Advance forward and run the ray again if no entity and/or block was found.

execute if score #hit rain_collector matches 0 if score #distance rain_collector matches ..60 positioned ^ ^ ^0.1 run function mineraft:raft_utility/rain_collector/ray