scoreboard players add @s cooking_time 1
execute if score @s cooking_time matches 1 run playsound minecraft:block.fire.ambient ambient @a[distance=..10] ~ ~ ~ 0.5 1
execute if score @s cooking_time matches 1..199 run particle minecraft:bubble_pop ~ ~0.8 ~ 0.15 0.05 0.15 0.01 1
execute if score @s cooking_time matches 40 run playsound minecraft:block.bubble_column.bubble_pop block @a[distance=..8] ~ ~ ~ 0.3 1
execute if score @s cooking_time matches 80 run playsound minecraft:block.bubble_column.bubble_pop block @a[distance=..8] ~ ~ ~ 0.4 1.1
execute if score @s cooking_time matches 120 run playsound minecraft:block.bubble_column.bubble_pop block @a[distance=..8] ~ ~ ~ 0.5 1.2
execute if score @s cooking_time matches 160 run playsound minecraft:block.bubble_column.bubble_pop block @a[distance=..8] ~ ~ ~ 0.6 1.3
execute if score @s cooking_time matches 200 run playsound minecraft:block.brewing_stand.brew block @a[distance=..8] ~ ~ ~ 0.7 1
execute if score @s cooking_time matches 200 run particle minecraft:cloud ~ ~0.8 ~ 0.2 0.1 0.2 0.01 5
execute if score @s cooking_time matches 200 run tag @s add ready
execute if score @s cooking_time matches 200 run item modify entity @e[type=item_display,distance=..1,limit=1,sort=nearest,tag=cooking_pot_facade] contents {function:"set_components",components:{"minecraft:item_model":"minecraft:stone"}}
execute if entity @s[tag=ready] run particle minecraft:cloud ~ ~0.85 ~ 0.12 0.05 0.12 0.01 1 normal