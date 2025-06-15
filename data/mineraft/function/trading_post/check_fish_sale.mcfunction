execute as @e[type=villager,tag=register_entity,sort=nearest,limit=1,distance=..10] run tag @s add recent_trader

execute as @e[tag=recent_trader] store result score #recipe_0_uses dummy run data get entity @s Offers.Recipes[0].uses
execute as @e[tag=recent_trader] store result score #recipe_1_uses dummy run data get entity @s Offers.Recipes[1].uses
execute as @e[tag=recent_trader] store result score #recipe_2_uses dummy run data get entity @s Offers.Recipes[2].uses
execute as @e[tag=recent_trader] store result score #recipe_3_uses dummy run data get entity @s Offers.Recipes[3].uses
execute as @e[tag=recent_trader] store result score #recipe_4_uses dummy run data get entity @s Offers.Recipes[4].uses
execute as @e[tag=recent_trader] store result score #recipe_5_uses dummy run data get entity @s Offers.Recipes[5].uses
execute as @e[tag=recent_trader] store result score #recipe_6_uses dummy run data get entity @s Offers.Recipes[6].uses
execute as @e[tag=recent_trader] store result score #recipe_7_uses dummy run data get entity @s Offers.Recipes[7].uses
execute as @e[tag=recent_trader] store result score #recipe_8_uses dummy run data get entity @s Offers.Recipes[8].uses

# Recipe 0: Cod (10 rep)
execute if score #recipe_0_uses dummy matches 1.. as @e[tag=recent_trader] if data entity @s Offers.Recipes[0].buy{id:"minecraft:cod"} run scoreboard players add @p reputation 10
# Recipe 1: Salmon (20 rep)  
execute if score #recipe_1_uses dummy matches 1.. as @e[tag=recent_trader] if data entity @s Offers.Recipes[1].buy{id:"minecraft:salmon"} run scoreboard players add @p reputation 20
# Recipe 2: Shellfish (10 rep)
execute if score #recipe_2_uses dummy matches 1.. as @e[tag=recent_trader] if data entity @s Offers.Recipes[2].buy{id:"minecraft:paper"} run scoreboard players add @p reputation 10
# Recipe 3: Shrimp (20 rep)
execute if score #recipe_3_uses dummy matches 1.. as @e[tag=recent_trader] if data entity @s Offers.Recipes[3].buy{id:"minecraft:paper"} run scoreboard players add @p reputation 20
# Recipe 4: Lion Fish (40 rep)
execute if score #recipe_4_uses dummy matches 1.. as @e[tag=recent_trader] if data entity @s Offers.Recipes[4].buy{id:"minecraft:paper"} run scoreboard players add @p reputation 40
# Recipe 5: Sharp Carp (60 rep)
execute if score #recipe_5_uses dummy matches 1.. as @e[tag=recent_trader] if data entity @s Offers.Recipes[5].buy{id:"minecraft:paper"} run scoreboard players add @p reputation 60
# Recipe 6: Lobster (70 rep)
execute if score #recipe_6_uses dummy matches 1.. as @e[tag=recent_trader] if data entity @s Offers.Recipes[6].buy{id:"minecraft:paper"} run scoreboard players add @p reputation 70
# Recipe 7: Lunar Fish (80 rep)
execute if score #recipe_7_uses dummy matches 1.. as @e[tag=recent_trader] if data entity @s Offers.Recipes[7].buy{id:"minecraft:paper"} run scoreboard players add @p reputation 80
# Recipe 8: Gift Fish (200 rep)
execute if score #recipe_8_uses dummy matches 1.. as @e[tag=recent_trader] if data entity @s Offers.Recipes[8].buy{id:"minecraft:paper"} run scoreboard players add @p reputation 200

execute as @e[tag=recent_trader] run data modify entity @s Offers.Recipes[0].uses set value 0
execute as @e[tag=recent_trader] run data modify entity @s Offers.Recipes[1].uses set value 0
execute as @e[tag=recent_trader] run data modify entity @s Offers.Recipes[2].uses set value 0
execute as @e[tag=recent_trader] run data modify entity @s Offers.Recipes[3].uses set value 0
execute as @e[tag=recent_trader] run data modify entity @s Offers.Recipes[4].uses set value 0
execute as @e[tag=recent_trader] run data modify entity @s Offers.Recipes[5].uses set value 0
execute as @e[tag=recent_trader] run data modify entity @s Offers.Recipes[6].uses set value 0
execute as @e[tag=recent_trader] run data modify entity @s Offers.Recipes[7].uses set value 0
execute as @e[tag=recent_trader] run data modify entity @s Offers.Recipes[8].uses set value 0

tag @e[tag=recent_trader] remove recent_trader
advancement revoke @s only mineraft:trade_fish_rep