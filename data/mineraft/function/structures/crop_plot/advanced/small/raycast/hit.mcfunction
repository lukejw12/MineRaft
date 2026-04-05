scoreboard players operation #player_link mr.data = @s mr.link

data modify storage mineraft:crop_plot crop_plot_type set from entity @s data.crop_plot_type

scoreboard players operation #rotation mr.data = @s mr.data
function mineraft:structures/crop_plot/advanced/small/placement/calculate_rotation

execute align xyz run tp @s ~0.5 ~ ~0.5
execute store result score #hit_bx mr.data run data get entity @s Pos[0]
execute store result score #hit_bz mr.data run data get entity @s Pos[2]
data modify storage mineraft:grid block1_offset_x set from storage mineraft:crop_plot block1_offset_x
data modify storage mineraft:grid block1_offset_z set from storage mineraft:crop_plot block1_offset_z
scoreboard players set #slot_free mr.data 0
execute as @e[type=item_display,tag=mr.surface,distance=..3,limit=1,sort=nearest] run function mineraft:grid/block/compute_and_check_pair
execute if score #slot_free mr.data matches 0 run return run kill @s

function mineraft:structures/crop_plot/advanced/small/placement/check_space with storage mineraft:crop_plot
