execute unless data entity @s {data:{soil:"moist"}} run return 0
scoreboard players operation #cp.id mr.data = @s mr.id
execute as @e[type=item_display,tag=mr.p.crop,distance=..3] if score @s mr.id = #cp.id mr.data if data entity @s {data:{state:"growing"}} run function mineraft:structure/crop_plot/grow
