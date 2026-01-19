
execute if data entity @s {data:{side:"north"}} positioned ~3 ~ ~ if entity @e[type=item_display,tag=mr.wall_display,distance=..0.1,predicate=mineraft:wall_is_north] run scoreboard players set #has_adjacent mr.data 1
execute if data entity @s {data:{side:"north"}} positioned ~-3 ~ ~ if entity @e[type=item_display,tag=mr.wall_display,distance=..0.1,predicate=mineraft:wall_is_north] run scoreboard players set #has_adjacent mr.data 1

execute if data entity @s {data:{side:"south"}} positioned ~3 ~ ~ if entity @e[type=item_display,tag=mr.wall_display,distance=..0.1,predicate=mineraft:wall_is_south] run scoreboard players set #has_adjacent mr.data 1
execute if data entity @s {data:{side:"south"}} positioned ~-3 ~ ~ if entity @e[type=item_display,tag=mr.wall_display,distance=..0.1,predicate=mineraft:wall_is_south] run scoreboard players set #has_adjacent mr.data 1

execute if data entity @s {data:{side:"west"}} positioned ~ ~ ~3 if entity @e[type=item_display,tag=mr.wall_display,distance=..0.1,predicate=mineraft:wall_is_west] run scoreboard players set #has_adjacent mr.data 1
execute if data entity @s {data:{side:"west"}} positioned ~ ~ ~-3 if entity @e[type=item_display,tag=mr.wall_display,distance=..0.1,predicate=mineraft:wall_is_west] run scoreboard players set #has_adjacent mr.data 1

execute if data entity @s {data:{side:"east"}} positioned ~ ~ ~3 if entity @e[type=item_display,tag=mr.wall_display,distance=..0.1,predicate=mineraft:wall_is_east] run scoreboard players set #has_adjacent mr.data 1
execute if data entity @s {data:{side:"east"}} positioned ~ ~ ~-3 if entity @e[type=item_display,tag=mr.wall_display,distance=..0.1,predicate=mineraft:wall_is_east] run scoreboard players set #has_adjacent mr.data 1

execute if score #has_adjacent mr.data matches 1 run scoreboard players operation #pillar_wall_id mr.data = @s mr.wall_id
execute if score #has_adjacent mr.data matches 1 as @e[type=item_display,tag=mr.wall_pillar] if score @s mr.wall_id = #pillar_wall_id mr.data run tellraw @a ["    ✓ ID MATCH - killing pillar"]
execute if score #has_adjacent mr.data matches 1 as @e[type=item_display,tag=mr.wall_pillar] if score @s mr.wall_id = #pillar_wall_id mr.data run kill @s

scoreboard players set #has_adjacent mr.data 0
