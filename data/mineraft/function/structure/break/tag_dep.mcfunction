execute as @e[type=item_display,tag=mr.root,tag=!mr.breaking,distance=..32] if score @s mr.id = #dep mr.data run function mineraft:structure/fall/mark
scoreboard players set #dep mr.data 0
