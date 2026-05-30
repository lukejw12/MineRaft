execute unless data entity @s data.grid.cx run function mineraft:grid/core/init

execute store result score #surface_x mr.data run data get entity @s data.grid.cx
execute store result score #surface_z mr.data run data get entity @s data.grid.cz

scoreboard players operation #slot2_x mr.data = #hit_bx mr.data
scoreboard players operation #slot2_x mr.data -= #surface_x mr.data
scoreboard players add #slot2_x mr.data 1

scoreboard players operation #slot2_z mr.data = #hit_bz mr.data
scoreboard players operation #slot2_z mr.data -= #surface_z mr.data
scoreboard players add #slot2_z mr.data 1

execute store result score #off_x mr.data run data get storage mineraft:grid block1_offset_x
execute store result score #off_z mr.data run data get storage mineraft:grid block1_offset_z

scoreboard players operation #slot_x mr.data = #slot2_x mr.data
scoreboard players operation #slot_z mr.data = #slot2_z mr.data
scoreboard players operation #slot3_x mr.data = #slot2_x mr.data
scoreboard players operation #slot3_z mr.data = #slot2_z mr.data

execute unless score #off_z mr.data matches 0 run scoreboard players remove #slot_z mr.data 1
execute unless score #off_z mr.data matches 0 run scoreboard players add #slot3_z mr.data 1

execute unless score #off_x mr.data matches 0 run scoreboard players remove #slot_x mr.data 1
execute unless score #off_x mr.data matches 0 run scoreboard players add #slot3_x mr.data 1

execute store result storage mineraft:grid slot_x int 1 run scoreboard players get #slot_x mr.data
execute store result storage mineraft:grid slot_z int 1 run scoreboard players get #slot_z mr.data
execute store result storage mineraft:grid slot2_x int 1 run scoreboard players get #slot2_x mr.data
execute store result storage mineraft:grid slot2_z int 1 run scoreboard players get #slot2_z mr.data
execute store result storage mineraft:grid slot3_x int 1 run scoreboard players get #slot3_x mr.data
execute store result storage mineraft:grid slot3_z int 1 run scoreboard players get #slot3_z mr.data

function mineraft:grid/block/release_1x3 with storage mineraft:grid
