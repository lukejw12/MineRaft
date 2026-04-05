
execute unless data entity @s data.block1_offset_x run return 1

data modify storage mineraft:grid block1_offset_x set from entity @s data.block1_offset_x
data modify storage mineraft:grid block1_offset_z set from entity @s data.block1_offset_z

execute store result score #hit_bx mr.data run data get entity @s Pos[0]
execute store result score #hit_bz mr.data run data get entity @s Pos[2]

execute as @e[type=item_display,tag=mr.surface,distance=..3,limit=1,sort=nearest] run function mineraft:grid/block/compute_and_claim_pair
