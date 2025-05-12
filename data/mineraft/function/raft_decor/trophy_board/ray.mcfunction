
execute unless block ~ ~ ~ #minecraft:blocks run function mineraft:raft_decor/trophy_board/hit_block
scoreboard players add #distance trophy_board 1
execute if score #hit trophy_board matches 0 if score #distance trophy_board matches ..40 positioned ^ ^ ^0.1 run function mineraft:raft_decor/trophy_board/ray