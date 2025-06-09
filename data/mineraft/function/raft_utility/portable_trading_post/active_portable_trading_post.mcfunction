execute unless block ~ ~ ~ structure_void run function mineraft:raft_utility/portable_trading_post/destroy_portable_trading_post
execute unless block ~ ~-1 ~ #raft_materials run function mineraft:raft_utility/portable_trading_post/destroy_portable_trading_post

scoreboard players operation #temp portable_trading_post_id = @s portable_trading_post_id
tag @e[type=item_display,tag=portable_trading_post_facade] remove this_portable_trading_post_facade
tag @e[type=villager,tag=portable_trader] remove this_portable_trader
execute as @e[type=item_display,tag=portable_trading_post_facade] if score @s portable_trading_post_id = #temp portable_trading_post_id run tag @s add this_portable_trading_post_facade
execute as @e[type=villager,tag=portable_trader] if score @s portable_trading_post_id = #temp portable_trading_post_id run tag @s add this_portable_trader

tag @e[tag=this_portable_trading_post_facade] remove this_portable_trading_post_facade
tag @e[tag=this_portable_trader] remove this_portable_trader