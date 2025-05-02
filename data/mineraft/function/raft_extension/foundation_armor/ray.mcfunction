#Run a function if a block was successfully detected.

execute unless block ~ ~ ~ #minecraft:blocks run function mineraft:raft_extension/foundation_armor/hit_block
scoreboard players add #distance foundation 1

#Advance forward and run the ray again if no entity and/or block was found.

execute if score #hit foundation matches 0 if score #distance foundation matches ..60 positioned ^ ^ ^0.1 run function mineraft:raft_extension/foundation_armor/ray