execute if score @s reputation matches 3000.. as @e[type=villager,tag=register_entity,distance=..20] run function mineraft:trading_post/set_t3_trades
execute if score @s reputation matches 300..2999 as @e[type=villager,tag=register_entity,distance=..20] run function mineraft:trading_post/set_t2_trades
execute if score @s reputation matches ..299 as @e[type=villager,tag=register_entity,distance=..20] run function mineraft:trading_post/set_t1_trades
execute unless score @s reputation matches 0.. run scoreboard players set @s reputation 0