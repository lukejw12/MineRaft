execute unless data entity @s {data:{state:"grilling"}} run return 0
execute unless score @s mr.fuel matches 1.. run return 0
scoreboard players add @s mr.progress 1
particle flame ~ ~-0.3 ~ 0 0 0 0 3
execute if score @s mr.progress matches 20.. run function mineraft:structure/grill/second
