
execute if data entity @s {data:{side:"north"}} positioned ~3 ~ ~ if entity @e[type=item_display,tag=mr.wall_display,distance=..0.1,predicate=mineraft:wall_is_north] run return 0
execute if data entity @s {data:{side:"north"}} positioned ~-3 ~ ~ if entity @e[type=item_display,tag=mr.wall_display,distance=..0.1,predicate=mineraft:wall_is_north] run return 0

execute if data entity @s {data:{side:"south"}} positioned ~3 ~ ~ if entity @e[type=item_display,tag=mr.wall_display,distance=..0.1,predicate=mineraft:wall_is_south] run return 0
execute if data entity @s {data:{side:"south"}} positioned ~-3 ~ ~ if entity @e[type=item_display,tag=mr.wall_display,distance=..0.1,predicate=mineraft:wall_is_south] run return 0

execute if data entity @s {data:{side:"east"}} positioned ~ ~ ~3 if entity @e[type=item_display,tag=mr.wall_display,distance=..0.1,predicate=mineraft:wall_is_east] run return 0
execute if data entity @s {data:{side:"east"}} positioned ~ ~ ~-3 if entity @e[type=item_display,tag=mr.wall_display,distance=..0.1,predicate=mineraft:wall_is_east] run return 0

execute if data entity @s {data:{side:"west"}} positioned ~ ~ ~3 if entity @e[type=item_display,tag=mr.wall_display,distance=..0.1,predicate=mineraft:wall_is_west] run return 0
execute if data entity @s {data:{side:"west"}} positioned ~ ~ ~-3 if entity @e[type=item_display,tag=mr.wall_display,distance=..0.1,predicate=mineraft:wall_is_west] run return 0

return 1