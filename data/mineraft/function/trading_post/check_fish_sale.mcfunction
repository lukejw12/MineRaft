execute as @e[type=villager,tag=register_entity,sort=nearest,limit=1,distance=..10] run tag @s add recent_trader

execute as @e[tag=recent_trader] store result score #recipe_0_uses dummy run data get entity @s Offers.Recipes[0].uses
execute as @e[tag=recent_trader] store result score #recipe_1_uses dummy run data get entity @s Offers.Recipes[1].uses
execute as @e[tag=recent_trader] store result score #recipe_2_uses dummy run data get entity @s Offers.Recipes[2].uses
execute as @e[tag=recent_trader] store result score #recipe_3_uses dummy run data get entity @s Offers.Recipes[3].uses

# Recipe 0: Cod (1 rep)
execute if score #recipe_0_uses dummy matches 1.. as @e[tag=recent_trader] if data entity @s Offers.Recipes[0].buy{id:"minecraft:cod"} run scoreboard players add @p reputation 1
# Recipe 1: Salmon (2 rep)  
execute if score #recipe_1_uses dummy matches 1.. as @e[tag=recent_trader] if data entity @s Offers.Recipes[1].buy{id:"minecraft:salmon"} run scoreboard players add @p reputation 2
# Recipe 2: Shellfish (1 rep)
execute if score #recipe_2_uses dummy matches 1.. as @e[tag=recent_trader] if data entity @s Offers.Recipes[2].buy{id:"minecraft:paper"} run scoreboard players add @p reputation 1
# Recipe 3: Shrimp (2 rep)
execute if score #recipe_3_uses dummy matches 1.. as @e[tag=recent_trader] if data entity @s Offers.Recipes[3].buy{id:"minecraft:paper"} run scoreboard players add @p reputation 2

execute as @e[tag=recent_trader] run data modify entity @s Offers.Recipes[0].uses set value 0
execute as @e[tag=recent_trader] run data modify entity @s Offers.Recipes[1].uses set value 0
execute as @e[tag=recent_trader] run data modify entity @s Offers.Recipes[2].uses set value 0
execute as @e[tag=recent_trader] run data modify entity @s Offers.Recipes[3].uses set value 0

tag @e[tag=recent_trader] remove recent_trader
advancement revoke @s only mineraft:trade_fish_rep