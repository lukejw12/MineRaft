
execute as @e[type=marker,tag=cooking_pot_active,limit=1,sort=nearest] store result score #debug_count temp run scoreboard players get @s ingredient_count


execute as @e[type=marker,tag=cooking_pot_active,limit=1,sort=nearest] unless score @s ingredient_count matches 3 run return 0

execute on target run clear @s minecraft:bowl 1


execute as @e[type=marker,tag=cooking_pot_active,limit=1,sort=nearest] run function mineraft:raft_utility/cooking_pot/calculate_stew

execute as @e[type=marker,tag=cooking_pot_active,limit=1,sort=nearest] run scoreboard players set @s cooking 0
execute as @e[type=marker,tag=cooking_pot_active,limit=1,sort=nearest] run scoreboard players set @s ingredient_count 0