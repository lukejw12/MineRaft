execute unless data entity @s data.grid run function mineraft:grid/core/init
execute store result score #adj_cx mr.data run data get entity @s data.grid.cx
execute store result score #adj_cz mr.data run data get entity @s data.grid.cz

scoreboard players operation #adj_slot_x mr.data = #hit_bx mr.data
scoreboard players operation #adj_slot_x mr.data -= #adj_cx mr.data
scoreboard players add #adj_slot_x mr.data 1

scoreboard players operation #adj_slot_z mr.data = #hit_bz mr.data
scoreboard players operation #adj_slot_z mr.data -= #adj_cz mr.data
scoreboard players add #adj_slot_z mr.data 1

execute unless score #adj_slot_x mr.data matches 0..2 run return 0
execute unless score #adj_slot_z mr.data matches 0..2 run return 0

execute store result storage mineraft:grid adj_x int 1 run scoreboard players get #adj_slot_x mr.data
execute store result storage mineraft:grid adj_z int 1 run scoreboard players get #adj_slot_z mr.data

function mineraft:grid/block/do_claim_adjacent_slot with storage mineraft:grid
