execute unless block ~ ~ ~ #minecraft:blocks run function mineraft:raft_decor/wall/solid_wooden_wall/hit_block
scoreboard players add #distance solid_wooden_wall 1

execute if score #hit solid_wooden_wall matches 0 if score #distance solid_wooden_wall matches ..60 positioned ^ ^ ^0.1 run function mineraft:raft_decor/wall/solid_wooden_wall/ray