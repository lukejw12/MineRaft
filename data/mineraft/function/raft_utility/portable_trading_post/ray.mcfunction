execute unless block ~ ~ ~ #minecraft:blocks run function mineraft:raft_utility/portable_trading_post/hit_block
scoreboard players add #distance portable_trading_post 1
execute if score #hit portable_trading_post matches 0 if score #distance portable_trading_post matches ..60 positioned ^ ^ ^0.1 run function mineraft:raft_utility/portable_trading_post/ray