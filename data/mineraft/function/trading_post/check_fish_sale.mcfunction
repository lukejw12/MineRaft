execute as @e[type=villager,tag=register_entity,sort=nearest,limit=1,distance=..10] run tag @s add recent_trader

execute as @e[tag=recent_trader] if data entity @s Offers.Recipes[{uses:1,buy:{id:"minecraft:cod"}}] run scoreboard players add @p reputation 1
execute as @e[tag=recent_trader] if data entity @s Offers.Recipes[{uses:1,buy:{id:"minecraft:salmon"}}] run scoreboard players add @p reputation 2
execute as @e[tag=recent_trader] if data entity @s Offers.Recipes[{uses:1,buy:{id:"minecraft:paper",components:{"minecraft:item_name":"{\"text\":\"Shellfish\"}"}}}] run scoreboard players add @p reputation 1
execute as @e[tag=recent_trader] if data entity @s Offers.Recipes[{uses:1,buy:{id:"minecraft:paper",components:{"minecraft:item_name":"{\"text\":\"Shrimp\"}"}}}] run scoreboard players add @p reputation 2
execute as @e[tag=recent_trader] if data entity @s Offers.Recipes[{uses:1,buy:{id:"minecraft:paper",components:{"minecraft:item_name":"{\"text\":\"Lion Fish\"}"}}}] run scoreboard players add @p reputation 2
execute as @e[tag=recent_trader] if data entity @s Offers.Recipes[{uses:1,buy:{id:"minecraft:paper",components:{"minecraft:item_name":"{\"text\":\"Sharp Carp\"}"}}}] run scoreboard players add @p reputation 3
execute as @e[tag=recent_trader] if data entity @s Offers.Recipes[{uses:1,buy:{id:"minecraft:paper",components:{"minecraft:item_name":"{\"text\":\"Lobster\"}"}}}] run scoreboard players add @p reputation 4
execute as @e[tag=recent_trader] if data entity @s Offers.Recipes[{uses:1,buy:{id:"minecraft:paper",components:{"minecraft:item_name":"{\"text\":\"Lunar Fish\"}"}}}] run scoreboard players add @p reputation 4
execute as @e[tag=recent_trader] if data entity @s Offers.Recipes[{uses:1,buy:{id:"minecraft:paper",components:{"minecraft:item_name":"{\"text\":\"Gift Fish\"}"}}}] run scoreboard players add @p reputation 5

tag @e[tag=recent_trader] remove recent_trader
advancement revoke @s only mineraft:trade_fish_rep