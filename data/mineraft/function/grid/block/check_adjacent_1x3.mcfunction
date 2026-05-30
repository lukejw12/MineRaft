execute store result score #off_x mr.data run data get storage mineraft:grid block1_offset_x
execute store result score #off_z mr.data run data get storage mineraft:grid block1_offset_z

scoreboard players operation #orig_bx mr.data = #hit_bx mr.data
scoreboard players operation #orig_bz mr.data = #hit_bz mr.data

execute unless score #off_z mr.data matches 0 run scoreboard players remove #hit_bz mr.data 1
execute unless score #off_z mr.data matches 0 positioned ~ ~ ~-1 as @e[type=item_display,tag=mr.surface,distance=..3,limit=1,sort=nearest] run function mineraft:grid/block/check_adjacent_slot

execute unless score #off_z mr.data matches 0 run scoreboard players operation #hit_bz mr.data = #orig_bz mr.data
execute unless score #off_z mr.data matches 0 run scoreboard players add #hit_bz mr.data 1
execute unless score #off_z mr.data matches 0 positioned ~ ~ ~1 as @e[type=item_display,tag=mr.surface,distance=..3,limit=1,sort=nearest] run function mineraft:grid/block/check_adjacent_slot

execute unless score #off_x mr.data matches 0 run scoreboard players remove #hit_bx mr.data 1
execute unless score #off_x mr.data matches 0 positioned ~-1 ~ ~ as @e[type=item_display,tag=mr.surface,distance=..3,limit=1,sort=nearest] run function mineraft:grid/block/check_adjacent_slot

execute unless score #off_x mr.data matches 0 run scoreboard players operation #hit_bx mr.data = #orig_bx mr.data
execute unless score #off_x mr.data matches 0 run scoreboard players add #hit_bx mr.data 1
execute unless score #off_x mr.data matches 0 positioned ~1 ~ ~ as @e[type=item_display,tag=mr.surface,distance=..3,limit=1,sort=nearest] run function mineraft:grid/block/check_adjacent_slot

scoreboard players operation #hit_bx mr.data = #orig_bx mr.data
scoreboard players operation #hit_bz mr.data = #orig_bz mr.data
