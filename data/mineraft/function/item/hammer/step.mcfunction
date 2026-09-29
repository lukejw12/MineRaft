execute as @e[type=item_display,tag=mr.root,tag=!mr.floorlike,tag=!mr.breaking,distance=..1.5,sort=nearest,limit=1] run tag @s add mr.hammer_target
execute if entity @e[type=item_display,tag=mr.hammer_target,limit=1] run return 1
execute as @e[type=item_display,tag=mr.root,tag=mr.floorlike,tag=!mr.breaking,distance=..1.5,sort=nearest,limit=1] run tag @s add mr.hammer_target
execute if entity @e[type=item_display,tag=mr.hammer_target,limit=1] run return 1
scoreboard players remove #hm.n mr.data 1
execute if score #hm.n mr.data matches 1.. positioned ^ ^ ^0.1 run function mineraft:item/hammer/step
