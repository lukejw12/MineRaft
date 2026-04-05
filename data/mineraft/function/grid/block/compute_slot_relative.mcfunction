
execute unless data entity @s data.grid.cx run function mineraft:grid/core/init

execute store result score #surface_x mr.data run data get entity @s data.grid.cx
execute store result score #surface_z mr.data run data get entity @s data.grid.cz

scoreboard players operation #slot_x mr.data = #hit_bx mr.data
scoreboard players operation #slot_x mr.data -= #surface_x mr.data
scoreboard players add #slot_x mr.data 1

scoreboard players operation #slot_z mr.data = #hit_bz mr.data
scoreboard players operation #slot_z mr.data -= #surface_z mr.data
scoreboard players add #slot_z mr.data 1

execute store result storage mineraft:grid slot_x int 1 run scoreboard players get #slot_x mr.data
execute store result storage mineraft:grid slot_z int 1 run scoreboard players get #slot_z mr.data
