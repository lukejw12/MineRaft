
execute if data entity @s {data:{stairs_type:""}} run return 1

data modify storage mineraft:grid side set value "n"
execute as @e[type=item_display,tag=mr.surface,distance=..3,limit=1,sort=nearest] if data entity @s data.grid.edge_n{type:"stairs"} run function mineraft:grid/edge/clear_wall with storage mineraft:grid
data modify storage mineraft:grid side set value "s"
execute as @e[type=item_display,tag=mr.surface,distance=..3,limit=1,sort=nearest] if data entity @s data.grid.edge_s{type:"stairs"} run function mineraft:grid/edge/clear_wall with storage mineraft:grid
data modify storage mineraft:grid side set value "e"
execute as @e[type=item_display,tag=mr.surface,distance=..3,limit=1,sort=nearest] if data entity @s data.grid.edge_e{type:"stairs"} run function mineraft:grid/edge/clear_wall with storage mineraft:grid
data modify storage mineraft:grid side set value "w"
execute as @e[type=item_display,tag=mr.surface,distance=..3,limit=1,sort=nearest] if data entity @s data.grid.edge_w{type:"stairs"} run function mineraft:grid/edge/clear_wall with storage mineraft:grid
