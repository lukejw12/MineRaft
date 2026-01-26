execute store result score #wall_x mr.data run data get entity @s Pos[0]
execute store result score #wall_z mr.data run data get entity @s Pos[2]

scoreboard players operation #dir_x mr.data = #pillar_x mr.data
scoreboard players operation #dir_x mr.data -= #wall_x mr.data
scoreboard players operation #dir_z mr.data = #pillar_z mr.data
scoreboard players operation #dir_z mr.data -= #wall_z mr.data

execute if data entity @s {data:{side:"north"}} if score #dir_x mr.data matches 1.. positioned ~3 ~ ~ if entity @e[type=item_display,tag=mr.wall_display,distance=..0.1,predicate=mineraft:wall_is_north] run return 0
execute if data entity @s {data:{side:"north"}} if score #dir_x mr.data matches ..-1 positioned ~-3 ~ ~ if entity @e[type=item_display,tag=mr.wall_display,distance=..0.1,predicate=mineraft:wall_is_north] run return 0

execute if data entity @s {data:{side:"south"}} if score #dir_x mr.data matches 1.. positioned ~3 ~ ~ if entity @e[type=item_display,tag=mr.wall_display,distance=..0.1,predicate=mineraft:wall_is_south] run return 0
execute if data entity @s {data:{side:"south"}} if score #dir_x mr.data matches ..-1 positioned ~-3 ~ ~ if entity @e[type=item_display,tag=mr.wall_display,distance=..0.1,predicate=mineraft:wall_is_south] run return 0

execute if data entity @s {data:{side:"east"}} if score #dir_z mr.data matches 1.. positioned ~ ~ ~3 if entity @e[type=item_display,tag=mr.wall_display,distance=..0.1,predicate=mineraft:wall_is_east] run return 0
execute if data entity @s {data:{side:"east"}} if score #dir_z mr.data matches ..-1 positioned ~ ~ ~-3 if entity @e[type=item_display,tag=mr.wall_display,distance=..0.1,predicate=mineraft:wall_is_east] run return 0

execute if data entity @s {data:{side:"west"}} if score #dir_z mr.data matches 1.. positioned ~ ~ ~3 if entity @e[type=item_display,tag=mr.wall_display,distance=..0.1,predicate=mineraft:wall_is_west] run return 0
execute if data entity @s {data:{side:"west"}} if score #dir_z mr.data matches ..-1 positioned ~ ~ ~-3 if entity @e[type=item_display,tag=mr.wall_display,distance=..0.1,predicate=mineraft:wall_is_west] run return 0

return 1