execute as @e[type=item_display,tag=mr.cascade,limit=1] at @s run function mineraft:structure/break/one
execute if entity @e[type=item_display,tag=mr.cascade,limit=1] run return run function mineraft:structure/break/drain
execute if score #brk.plat mr.data matches 1 run function mineraft:structure/break/validate_platforms
