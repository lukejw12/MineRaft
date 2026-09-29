execute unless score @s mr.fuel matches 1.. run return 0
scoreboard players add @s mr.progress 1
execute if score @s mr.progress matches 20.. run function mineraft:structure/campfire/second
