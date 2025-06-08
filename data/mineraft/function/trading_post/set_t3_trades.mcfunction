execute unless entity @s[tag=t3_rep] run function mineraft:trading_post/apply_t3_trades
tag @s remove t2_rep
tag @s remove t1_rep
tag @s add t3_rep