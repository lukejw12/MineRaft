# data/mineraft/function/structures/walls/validation/corners/check.mcfunction
execute store result storage mineraft:walls current_wall_id int 1 run scoreboard players get @s mr.wall_id

execute if data entity @s {data:{side:"west"}} positioned ~-2 ~ ~2 if entity @e[type=item_display,tag=mr.wall_display,tag=!mr.destroying,distance=..0.1,predicate=mineraft:wall_is_north] run scoreboard players set #found_diagonal mr.data 1
execute if data entity @s {data:{side:"west"}} if score #found_diagonal mr.data matches 1 positioned ~-2 ~ ~2 positioned ~3 ~ ~ if entity @e[type=item_display,tag=mr.wall_display,tag=!mr.destroying,distance=..0.1,predicate=mineraft:wall_is_north] run scoreboard players set #found_diagonal mr.data 0
execute if data entity @s {data:{side:"west"}} if score #found_diagonal mr.data matches 1 positioned ~ ~ ~2 if entity @e[type=item_display,tag=mr.wall_pillar,distance=..0.5] run scoreboard players set #found_diagonal mr.data 0
execute if data entity @s {data:{side:"west"}} if score #found_diagonal mr.data matches 1 positioned ~-2 ~ ~2 store result storage mineraft:walls diagonal_wall_id int 1 run scoreboard players get @e[type=item_display,tag=mr.wall_display,tag=!mr.destroying,distance=..0.1,predicate=mineraft:wall_is_north,limit=1] mr.wall_id
execute if data entity @s {data:{side:"west"}} if score #found_diagonal mr.data matches 1 run data modify storage mineraft:walls wall_type set from entity @s data.wall_type
execute if data entity @s {data:{side:"west"}} if score #found_diagonal mr.data matches 1 run data modify storage mineraft:walls pillar_x set value 0
execute if data entity @s {data:{side:"west"}} if score #found_diagonal mr.data matches 1 run data modify storage mineraft:walls pillar_y set value 1
execute if data entity @s {data:{side:"west"}} if score #found_diagonal mr.data matches 1 run data modify storage mineraft:walls pillar_z set value 2
execute if data entity @s {data:{side:"west"}} if score #found_diagonal mr.data matches 1 run data modify storage mineraft:walls pillar_rotation set value "[0f,1f,0f,0f]"
execute if data entity @s {data:{side:"west"}} if score #found_diagonal mr.data matches 1 run function mineraft:structures/walls/placement/spawn/pillar with storage mineraft:walls
execute if data entity @s {data:{side:"west"}} run scoreboard players set #found_diagonal mr.data 0

execute if data entity @s {data:{side:"west"}} positioned ~-2 ~ ~-2 if entity @e[type=item_display,tag=mr.wall_display,tag=!mr.destroying,distance=..0.1,predicate=mineraft:wall_is_south] run scoreboard players set #found_diagonal mr.data 1
execute if data entity @s {data:{side:"west"}} if score #found_diagonal mr.data matches 1 positioned ~-2 ~ ~-2 positioned ~3 ~ ~ if entity @e[type=item_display,tag=mr.wall_display,tag=!mr.destroying,distance=..0.1,predicate=mineraft:wall_is_south] run scoreboard players set #found_diagonal mr.data 0
execute if data entity @s {data:{side:"west"}} if score #found_diagonal mr.data matches 1 positioned ~ ~ ~-2 if entity @e[type=item_display,tag=mr.wall_pillar,distance=..0.5] run scoreboard players set #found_diagonal mr.data 0
execute if data entity @s {data:{side:"west"}} if score #found_diagonal mr.data matches 1 positioned ~-2 ~ ~-2 store result storage mineraft:walls diagonal_wall_id int 1 run scoreboard players get @e[type=item_display,tag=mr.wall_display,tag=!mr.destroying,distance=..0.1,predicate=mineraft:wall_is_south,limit=1] mr.wall_id
execute if data entity @s {data:{side:"west"}} if score #found_diagonal mr.data matches 1 run data modify storage mineraft:walls wall_type set from entity @s data.wall_type
execute if data entity @s {data:{side:"west"}} if score #found_diagonal mr.data matches 1 run data modify storage mineraft:walls pillar_x set value 0
execute if data entity @s {data:{side:"west"}} if score #found_diagonal mr.data matches 1 run data modify storage mineraft:walls pillar_y set value 1
execute if data entity @s {data:{side:"west"}} if score #found_diagonal mr.data matches 1 run data modify storage mineraft:walls pillar_z set value -2
execute if data entity @s {data:{side:"west"}} if score #found_diagonal mr.data matches 1 run data modify storage mineraft:walls pillar_rotation set value "[0f,-0.707f,0f,0.707f]"
execute if data entity @s {data:{side:"west"}} if score #found_diagonal mr.data matches 1 run function mineraft:structures/walls/placement/spawn/pillar with storage mineraft:walls
execute if data entity @s {data:{side:"west"}} run scoreboard players set #found_diagonal mr.data 0

execute if data entity @s {data:{side:"east"}} positioned ~2 ~ ~2 if entity @e[type=item_display,tag=mr.wall_display,tag=!mr.destroying,distance=..0.1,predicate=mineraft:wall_is_north] run scoreboard players set #found_diagonal mr.data 1
execute if data entity @s {data:{side:"east"}} if score #found_diagonal mr.data matches 1 positioned ~2 ~ ~2 positioned ~-3 ~ ~ if entity @e[type=item_display,tag=mr.wall_display,tag=!mr.destroying,distance=..0.1,predicate=mineraft:wall_is_north] run scoreboard players set #found_diagonal mr.data 0
execute if data entity @s {data:{side:"east"}} if score #found_diagonal mr.data matches 1 positioned ~ ~ ~2 if entity @e[type=item_display,tag=mr.wall_pillar,distance=..0.5] run scoreboard players set #found_diagonal mr.data 0
execute if data entity @s {data:{side:"east"}} if score #found_diagonal mr.data matches 1 positioned ~2 ~ ~2 store result storage mineraft:walls diagonal_wall_id int 1 run scoreboard players get @e[type=item_display,tag=mr.wall_display,tag=!mr.destroying,distance=..0.1,predicate=mineraft:wall_is_north,limit=1] mr.wall_id
execute if data entity @s {data:{side:"east"}} if score #found_diagonal mr.data matches 1 run data modify storage mineraft:walls wall_type set from entity @s data.wall_type
execute if data entity @s {data:{side:"east"}} if score #found_diagonal mr.data matches 1 run data modify storage mineraft:walls pillar_x set value 0
execute if data entity @s {data:{side:"east"}} if score #found_diagonal mr.data matches 1 run data modify storage mineraft:walls pillar_y set value 1
execute if data entity @s {data:{side:"east"}} if score #found_diagonal mr.data matches 1 run data modify storage mineraft:walls pillar_z set value 2
execute if data entity @s {data:{side:"east"}} if score #found_diagonal mr.data matches 1 run data modify storage mineraft:walls pillar_rotation set value "[0f,0.707f,0f,0.707f]"
execute if data entity @s {data:{side:"east"}} if score #found_diagonal mr.data matches 1 run function mineraft:structures/walls/placement/spawn/pillar with storage mineraft:walls
execute if data entity @s {data:{side:"east"}} run scoreboard players set #found_diagonal mr.data 0

execute if data entity @s {data:{side:"east"}} positioned ~2 ~ ~-2 if entity @e[type=item_display,tag=mr.wall_display,tag=!mr.destroying,distance=..0.1,predicate=mineraft:wall_is_south] run scoreboard players set #found_diagonal mr.data 1
execute if data entity @s {data:{side:"east"}} if score #found_diagonal mr.data matches 1 positioned ~2 ~ ~-2 positioned ~-3 ~ ~ if entity @e[type=item_display,tag=mr.wall_display,tag=!mr.destroying,distance=..0.1,predicate=mineraft:wall_is_south] run scoreboard players set #found_diagonal mr.data 0
execute if data entity @s {data:{side:"east"}} if score #found_diagonal mr.data matches 1 positioned ~ ~ ~-2 if entity @e[type=item_display,tag=mr.wall_pillar,distance=..0.5] run scoreboard players set #found_diagonal mr.data 0
execute if data entity @s {data:{side:"east"}} if score #found_diagonal mr.data matches 1 positioned ~2 ~ ~-2 store result storage mineraft:walls diagonal_wall_id int 1 run scoreboard players get @e[type=item_display,tag=mr.wall_display,tag=!mr.destroying,distance=..0.1,predicate=mineraft:wall_is_south,limit=1] mr.wall_id
execute if data entity @s {data:{side:"east"}} if score #found_diagonal mr.data matches 1 run data modify storage mineraft:walls wall_type set from entity @s data.wall_type
execute if data entity @s {data:{side:"east"}} if score #found_diagonal mr.data matches 1 run data modify storage mineraft:walls pillar_x set value 0
execute if data entity @s {data:{side:"east"}} if score #found_diagonal mr.data matches 1 run data modify storage mineraft:walls pillar_y set value 1
execute if data entity @s {data:{side:"east"}} if score #found_diagonal mr.data matches 1 run data modify storage mineraft:walls pillar_z set value -2
execute if data entity @s {data:{side:"east"}} if score #found_diagonal mr.data matches 1 run data modify storage mineraft:walls pillar_rotation set value "[0f,0f,0f,1f]"
execute if data entity @s {data:{side:"east"}} if score #found_diagonal mr.data matches 1 run function mineraft:structures/walls/placement/spawn/pillar with storage mineraft:walls
execute if data entity @s {data:{side:"east"}} run scoreboard players set #found_diagonal mr.data 0

execute if data entity @s {data:{side:"south"}} positioned ~2 ~ ~2 if entity @e[type=item_display,tag=mr.wall_display,tag=!mr.destroying,distance=..0.1,predicate=mineraft:wall_is_west] run scoreboard players set #found_diagonal mr.data 1
execute if data entity @s {data:{side:"south"}} if score #found_diagonal mr.data matches 1 positioned ~2 ~ ~2 positioned ~ ~ ~-3 if entity @e[type=item_display,tag=mr.wall_display,tag=!mr.destroying,distance=..0.1,predicate=mineraft:wall_is_west] run scoreboard players set #found_diagonal mr.data 0
execute if data entity @s {data:{side:"south"}} if score #found_diagonal mr.data matches 1 positioned ~2 ~ ~ if entity @e[type=item_display,tag=mr.wall_pillar,distance=..0.5] run scoreboard players set #found_diagonal mr.data 0
execute if data entity @s {data:{side:"south"}} if score #found_diagonal mr.data matches 1 positioned ~2 ~ ~2 store result storage mineraft:walls diagonal_wall_id int 1 run scoreboard players get @e[type=item_display,tag=mr.wall_display,tag=!mr.destroying,distance=..0.1,predicate=mineraft:wall_is_west,limit=1] mr.wall_id
execute if data entity @s {data:{side:"south"}} if score #found_diagonal mr.data matches 1 run data modify storage mineraft:walls wall_type set from entity @s data.wall_type
execute if data entity @s {data:{side:"south"}} if score #found_diagonal mr.data matches 1 run data modify storage mineraft:walls pillar_x set value 2
execute if data entity @s {data:{side:"south"}} if score #found_diagonal mr.data matches 1 run data modify storage mineraft:walls pillar_y set value 1
execute if data entity @s {data:{side:"south"}} if score #found_diagonal mr.data matches 1 run data modify storage mineraft:walls pillar_z set value 0
execute if data entity @s {data:{side:"south"}} if score #found_diagonal mr.data matches 1 run data modify storage mineraft:walls pillar_rotation set value "[0f,-0.707f,0f,0.707f]"
execute if data entity @s {data:{side:"south"}} if score #found_diagonal mr.data matches 1 run function mineraft:structures/walls/placement/spawn/pillar with storage mineraft:walls
execute if data entity @s {data:{side:"south"}} run scoreboard players set #found_diagonal mr.data 0

execute if data entity @s {data:{side:"south"}} positioned ~-2 ~ ~2 if entity @e[type=item_display,tag=mr.wall_display,tag=!mr.destroying,distance=..0.1,predicate=mineraft:wall_is_east] run scoreboard players set #found_diagonal mr.data 1
execute if data entity @s {data:{side:"south"}} if score #found_diagonal mr.data matches 1 positioned ~-2 ~ ~2 positioned ~ ~ ~-3 if entity @e[type=item_display,tag=mr.wall_display,tag=!mr.destroying,distance=..0.1,predicate=mineraft:wall_is_east] run scoreboard players set #found_diagonal mr.data 0
execute if data entity @s {data:{side:"south"}} if score #found_diagonal mr.data matches 1 positioned ~-2 ~ ~ if entity @e[type=item_display,tag=mr.wall_pillar,distance=..0.5] run scoreboard players set #found_diagonal mr.data 0
execute if data entity @s {data:{side:"south"}} if score #found_diagonal mr.data matches 1 positioned ~-2 ~ ~2 store result storage mineraft:walls diagonal_wall_id int 1 run scoreboard players get @e[type=item_display,tag=mr.wall_display,tag=!mr.destroying,distance=..0.1,predicate=mineraft:wall_is_east,limit=1] mr.wall_id
execute if data entity @s {data:{side:"south"}} if score #found_diagonal mr.data matches 1 run data modify storage mineraft:walls wall_type set from entity @s data.wall_type
execute if data entity @s {data:{side:"south"}} if score #found_diagonal mr.data matches 1 run data modify storage mineraft:walls pillar_x set value -2
execute if data entity @s {data:{side:"south"}} if score #found_diagonal mr.data matches 1 run data modify storage mineraft:walls pillar_y set value 1
execute if data entity @s {data:{side:"south"}} if score #found_diagonal mr.data matches 1 run data modify storage mineraft:walls pillar_z set value 0
execute if data entity @s {data:{side:"south"}} if score #found_diagonal mr.data matches 1 run data modify storage mineraft:walls pillar_rotation set value "[0f,0f,0f,1f]"
execute if data entity @s {data:{side:"south"}} if score #found_diagonal mr.data matches 1 run function mineraft:structures/walls/placement/spawn/pillar with storage mineraft:walls
execute if data entity @s {data:{side:"south"}} run scoreboard players set #found_diagonal mr.data 0

execute if data entity @s {data:{side:"north"}} positioned ~2 ~ ~-2 if entity @e[type=item_display,tag=mr.wall_display,tag=!mr.destroying,distance=..0.1,predicate=mineraft:wall_is_west] run scoreboard players set #found_diagonal mr.data 1
execute if data entity @s {data:{side:"north"}} if score #found_diagonal mr.data matches 1 positioned ~2 ~ ~-2 positioned ~ ~ ~3 if entity @e[type=item_display,tag=mr.wall_display,tag=!mr.destroying,distance=..0.1,predicate=mineraft:wall_is_west] run scoreboard players set #found_diagonal mr.data 0
execute if data entity @s {data:{side:"north"}} if score #found_diagonal mr.data matches 1 positioned ~ ~ ~2 if entity @e[type=item_display,tag=mr.wall_pillar,distance=..0.5] run scoreboard players set #found_diagonal mr.data 0
execute if data entity @s {data:{side:"north"}} if score #found_diagonal mr.data matches 1 positioned ~2 ~ ~-2 store result storage mineraft:walls diagonal_wall_id int 1 run scoreboard players get @e[type=item_display,tag=mr.wall_display,tag=!mr.destroying,distance=..0.1,predicate=mineraft:wall_is_west,limit=1] mr.wall_id
execute if data entity @s {data:{side:"north"}} if score #found_diagonal mr.data matches 1 run data modify storage mineraft:walls wall_type set from entity @s data.wall_type
execute if data entity @s {data:{side:"north"}} if score #found_diagonal mr.data matches 1 run data modify storage mineraft:walls pillar_x set value 2
execute if data entity @s {data:{side:"north"}} if score #found_diagonal mr.data matches 1 run data modify storage mineraft:walls pillar_y set value 1
execute if data entity @s {data:{side:"north"}} if score #found_diagonal mr.data matches 1 run data modify storage mineraft:walls pillar_z set value 0
execute if data entity @s {data:{side:"north"}} if score #found_diagonal mr.data matches 1 run data modify storage mineraft:walls pillar_rotation set value "[0f,1f,0f,0f]"
execute if data entity @s {data:{side:"north"}} if score #found_diagonal mr.data matches 1 run function mineraft:structures/walls/placement/spawn/pillar with storage mineraft:walls
execute if data entity @s {data:{side:"north"}} run scoreboard players set #found_diagonal mr.data 0

execute if data entity @s {data:{side:"north"}} positioned ~-2 ~ ~-2 if entity @e[type=item_display,tag=mr.wall_display,tag=!mr.destroying,distance=..0.1,predicate=mineraft:wall_is_east] run scoreboard players set #found_diagonal mr.data 1
execute if data entity @s {data:{side:"north"}} if score #found_diagonal mr.data matches 1 positioned ~-2 ~ ~-2 positioned ~ ~ ~3 if entity @e[type=item_display,tag=mr.wall_display,tag=!mr.destroying,distance=..0.1,predicate=mineraft:wall_is_east] run scoreboard players set #found_diagonal mr.data 0
execute if data entity @s {data:{side:"north"}} if score #found_diagonal mr.data matches 1 positioned ~ ~ ~-2 if entity @e[type=item_display,tag=mr.wall_pillar,distance=..0.5] run scoreboard players set #found_diagonal mr.data 0
execute if data entity @s {data:{side:"north"}} if score #found_diagonal mr.data matches 1 positioned ~-2 ~ ~-2 store result storage mineraft:walls diagonal_wall_id int 1 run scoreboard players get @e[type=item_display,tag=mr.wall_display,tag=!mr.destroying,distance=..0.1,predicate=mineraft:wall_is_east,limit=1] mr.wall_id
execute if data entity @s {data:{side:"north"}} if score #found_diagonal mr.data matches 1 run data modify storage mineraft:walls wall_type set from entity @s data.wall_type
execute if data entity @s {data:{side:"north"}} if score #found_diagonal mr.data matches 1 run data modify storage mineraft:walls pillar_x set value -2
execute if data entity @s {data:{side:"north"}} if score #found_diagonal mr.data matches 1 run data modify storage mineraft:walls pillar_y set value 1
execute if data entity @s {data:{side:"north"}} if score #found_diagonal mr.data matches 1 run data modify storage mineraft:walls pillar_z set value 0
execute if data entity @s {data:{side:"north"}} if score #found_diagonal mr.data matches 1 run data modify storage mineraft:walls pillar_rotation set value "[0f,0.707f,0f,0.707f]"
execute if data entity @s {data:{side:"north"}} if score #found_diagonal mr.data matches 1 run function mineraft:structures/walls/placement/spawn/pillar with storage mineraft:walls
execute if data entity @s {data:{side:"north"}} run scoreboard players set #found_diagonal mr.data 0