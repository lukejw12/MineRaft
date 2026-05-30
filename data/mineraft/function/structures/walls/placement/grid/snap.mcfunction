execute if data storage mineraft:walls {side:"north"} as @e[type=item_display,tag=mr.surface,distance=..3,limit=1,sort=nearest] if data entity @s data.grid.edge_n run return fail
execute if data storage mineraft:walls {side:"south"} as @e[type=item_display,tag=mr.surface,distance=..3,limit=1,sort=nearest] if data entity @s data.grid.edge_s run return fail
execute if data storage mineraft:walls {side:"east"} as @e[type=item_display,tag=mr.surface,distance=..3,limit=1,sort=nearest] if data entity @s data.grid.edge_e run return fail
execute if data storage mineraft:walls {side:"west"} as @e[type=item_display,tag=mr.surface,distance=..3,limit=1,sort=nearest] if data entity @s data.grid.edge_w run return fail

execute if data storage mineraft:walls {side:"north"} positioned ~ ~ ~-1 run function mineraft:structures/walls/placement/spawn/spawn
execute if data storage mineraft:walls {side:"south"} positioned ~ ~ ~1 run function mineraft:structures/walls/placement/spawn/spawn
execute if data storage mineraft:walls {side:"east"} positioned ~1 ~ ~ run function mineraft:structures/walls/placement/spawn/spawn
execute if data storage mineraft:walls {side:"west"} positioned ~-1 ~ ~ run function mineraft:structures/walls/placement/spawn/spawn
