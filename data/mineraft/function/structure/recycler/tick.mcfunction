execute unless data entity @s {data:{state:"recycling"}} run return 0
execute unless data entity @s {data:{has_battery:1b}} run return 0
execute if data entity @s {data:{battery_life:0}} run return 0
scoreboard players add @s mr.timer 1
particle smoke ~ ~1.2 ~ 0.1 0.1 0.1 0.005 1
execute if score @s mr.timer matches 20.. run function mineraft:structure/recycler/second
