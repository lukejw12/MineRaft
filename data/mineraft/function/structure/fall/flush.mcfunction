scoreboard players set @e[type=item_display,tag=mr.falling] mr.fall 0
execute as @e[type=item_display,tag=mr.falling] at @s run function mineraft:structure/fall/one
execute if entity @e[type=item_display,tag=mr.falling,limit=1] run function mineraft:structure/fall/flush
