
execute unless block ~ ~ ~ #minecraft:blocks run function mineraft:raft_utility/cooking_pot/hit_block
scoreboard players add #distance cooking_pot 1


execute if score #hit cooking_pot matches 0 if score #distance cooking_pot matches ..60 positioned ^ ^ ^0.1 run function mineraft:raft_utility/cooking_pot/ray