advancement revoke @s only mineraft:technical/use_hammer
execute if score @s mr.cd matches 1.. run return 0
scoreboard players set @s mr.cd 6
execute at @s run function mineraft:item/hammer/ray
execute unless entity @e[type=item_display,tag=mr.hammer_target,limit=1] run return 0
tag @s add mr.breaker
execute as @e[type=item_display,tag=mr.hammer_target,limit=1] at @s run function mineraft:structure/break
tag @e[type=item_display,tag=mr.hammer_target] remove mr.hammer_target
tag @s remove mr.breaker
