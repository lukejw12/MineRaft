scoreboard players operation #temp portable_trading_post_id = @s portable_trading_post_id

execute as @e[type=item_display,tag=portable_trading_post_facade] if score @s portable_trading_post_id = #temp portable_trading_post_id run kill @s
execute as @e[type=villager,tag=portable_trader] if score @s portable_trading_post_id = #temp portable_trading_post_id run tp @s ~ ~-100 ~
execute as @e[type=villager,tag=portable_trader] if score @s portable_trading_post_id = #temp portable_trading_post_id run kill @s
summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:vex_spawn_egg",count:1,components:{"minecraft:custom_data":{portable_trading_post_item:1b},"minecraft:entity_data":{id:"minecraft:marker",Tags:["portable_trading_post"]},"minecraft:item_model":"minecraft:portable_trading_post_item","minecraft:item_name":{"translate":"item.mineraft.portable_trading_post","fallback":"Portable Trading Post"},"minecraft:rarity":"epic"}}}

kill @s