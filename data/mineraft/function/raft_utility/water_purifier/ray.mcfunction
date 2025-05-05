#Run a function if a block was successfully detected.

execute unless block ~ ~ ~ #minecraft:blocks run function mineraft:raft_utility/water_purifier/hit_block
scoreboard players add #distance water_purifier 1

#Advance forward and run the ray again if no entity and/or block was found.

execute if score #hit water_purifier matches 0 if score #distance water_purifier matches ..60 positioned ^ ^ ^0.1 run function mineraft:raft_utility/water_purifier/ray