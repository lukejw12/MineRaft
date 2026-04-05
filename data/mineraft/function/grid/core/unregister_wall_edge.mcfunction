
execute if data entity @s {data:{side:"north"}} run data modify storage mineraft:grid side set value "n"
execute if data entity @s {data:{side:"south"}} run data modify storage mineraft:grid side set value "s"
execute if data entity @s {data:{side:"east"}} run data modify storage mineraft:grid side set value "e"
execute if data entity @s {data:{side:"west"}} run data modify storage mineraft:grid side set value "w"

execute as @e[type=item_display,tag=mr.surface,distance=..3,limit=1,sort=nearest] run function mineraft:grid/edge/clear_wall with storage mineraft:grid
