$data modify entity @s item.components."minecraft:item_model" set value "$(model)"
execute at @e[type=item_display,tag=mr.foundation,tag=!mr.armored,distance=..2,limit=1,sort=nearest] run tp @s ~ ~ ~