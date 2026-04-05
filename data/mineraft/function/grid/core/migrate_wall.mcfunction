
execute store result score #hit_bx mr.data run data get entity @s Pos[0]
execute store result score #hit_bz mr.data run data get entity @s Pos[2]

execute if data entity @s {data:{side:"north"}} run data modify storage mineraft:grid side set value "n"
execute if data entity @s {data:{side:"south"}} run data modify storage mineraft:grid side set value "s"
execute if data entity @s {data:{side:"east"}} run data modify storage mineraft:grid side set value "e"
execute if data entity @s {data:{side:"west"}} run data modify storage mineraft:grid side set value "w"

data modify storage mineraft:grid wall_type set from entity @s data.wall_type
execute store result storage mineraft:grid wall_id int 1 run scoreboard players get @s mr.wall_id

execute as @e[type=item_display,tag=mr.surface,distance=..3,limit=1,sort=nearest] run function mineraft:grid/edge/set_wall with storage mineraft:grid

execute if entity @s[tag=mr.supporting_platform] as @e[type=item_display,tag=mr.surface,distance=..3,limit=1,sort=nearest] run function mineraft:grid/edge/set_supporting with storage mineraft:grid
