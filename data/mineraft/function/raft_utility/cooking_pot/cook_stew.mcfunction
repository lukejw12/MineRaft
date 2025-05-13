execute store result score #debug_count temp run scoreboard players get @e[type=marker,tag=cooking_pot_active,limit=1,sort=nearest,distance=..1] ingredient_count

execute as @e[type=marker,tag=cooking_pot_active,limit=1,sort=nearest,distance=..1] unless score @s ingredient_count matches 3 run return 0

clear @s minecraft:bowl 1

tag @s add cooking_collector
execute as @e[type=marker,tag=cooking_pot_active,limit=1,sort=nearest,distance=..1] run function mineraft:raft_utility/cooking_pot/calculate_stew
scoreboard players set #is_bad_stew temp 0
execute if score @e[type=marker,tag=cooking_pot_active,limit=1,sort=nearest,distance=..1] raw_shark_count matches 1.. run scoreboard players set #is_bad_stew temp 1
execute if score @e[type=marker,tag=cooking_pot_active,limit=1,sort=nearest,distance=..1] raw_cod_count matches 1.. run scoreboard players set #is_bad_stew temp 1
execute if score @e[type=marker,tag=cooking_pot_active,limit=1,sort=nearest,distance=..1] nutrition_value matches 15.. run advancement grant @s only mineraft:objectives/gourmet_chef

execute if score #is_bad_stew temp matches 1 run advancement grant @s only mineraft:objectives/bottom_of_the_barrel
execute as @a[tag=cooking_collector] run tag @s remove cooking_collector

execute as @e[type=marker,tag=cooking_pot_active,limit=1,sort=nearest,distance=..1] run scoreboard players set @s cooking 0
execute as @e[type=marker,tag=cooking_pot_active,limit=1,sort=nearest,distance=..1] run scoreboard players set @s ingredient_count 0
execute as @e[type=marker,tag=cooking_pot_active,limit=1,sort=nearest,distance=..1] run scoreboard players set @s kelp_count 0
execute as @e[type=marker,tag=cooking_pot_active,limit=1,sort=nearest,distance=..1] run scoreboard players set @s dried_kelp_count 0
execute as @e[type=marker,tag=cooking_pot_active,limit=1,sort=nearest,distance=..1] run scoreboard players set @s berries_count 0
execute as @e[type=marker,tag=cooking_pot_active,limit=1,sort=nearest,distance=..1] run scoreboard players set @s cod_count 0
execute as @e[type=marker,tag=cooking_pot_active,limit=1,sort=nearest,distance=..1] run scoreboard players set @s shark_count 0
execute as @e[type=marker,tag=cooking_pot_active,limit=1,sort=nearest,distance=..1] run scoreboard players set @s bread_count 0
execute as @e[type=marker,tag=cooking_pot_active,limit=1,sort=nearest,distance=..1] run scoreboard players set @s raw_cod_count 0
execute as @e[type=marker,tag=cooking_pot_active,limit=1,sort=nearest,distance=..1] run scoreboard players set @s raw_shark_count 0
execute as @e[type=marker,tag=cooking_pot_active,limit=1,sort=nearest,distance=..1] run scoreboard players set @s water_count 0
execute as @e[type=marker,tag=cooking_pot_active,limit=1,sort=nearest,distance=..1] run scoreboard players set @s pure_water_count 0
execute as @e[type=marker,tag=cooking_pot_active,limit=1,sort=nearest,distance=..1] run scoreboard players set @s thatch_count 0
execute as @e[type=marker,tag=cooking_pot_active,limit=1,sort=nearest,distance=..1] run tag @s remove stew_generated