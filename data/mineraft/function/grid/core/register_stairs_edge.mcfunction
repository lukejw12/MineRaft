
execute if data storage mineraft:stairs {direction:"south"} run data modify storage mineraft:grid side set value "s"
execute if data storage mineraft:stairs {direction:"north"} run data modify storage mineraft:grid side set value "n"
execute if data storage mineraft:stairs {direction:"east"} run data modify storage mineraft:grid side set value "e"
execute if data storage mineraft:stairs {direction:"west"} run data modify storage mineraft:grid side set value "w"

execute store result storage mineraft:grid wall_id int 1 run scoreboard players get @s mr.stairs_id

data modify storage mineraft:grid wall_type set value "stairs"

execute as @e[type=item_display,tag=mr.surface,distance=..3,limit=1,sort=nearest] run function mineraft:grid/edge/set_wall with storage mineraft:grid
