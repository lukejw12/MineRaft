execute unless block ~ ~ ~ barrier run function mineraft:structures/crop_plot/advanced/large/core/destroy
data modify storage mineraft:crop_plot offset_x1 set from entity @s data.offset_x1
data modify storage mineraft:crop_plot offset_z1 set from entity @s data.offset_z1
data modify storage mineraft:crop_plot offset_x2 set from entity @s data.offset_x2
data modify storage mineraft:crop_plot offset_z2 set from entity @s data.offset_z2
data modify storage mineraft:crop_plot offset_x3 set from entity @s data.offset_x3
data modify storage mineraft:crop_plot offset_z3 set from entity @s data.offset_z3
function mineraft:structures/crop_plot/advanced/large/core/tick_check with storage mineraft:crop_plot

execute if data entity @s {data:{state:"sapling_watered"}} run scoreboard players add @s mr.crop_plot_timer 1
execute if data entity @s {data:{state:"sapling_watered"}} if score @s mr.crop_plot_timer matches 3600.. run function mineraft:structures/crop_plot/shared/large/growth/to_mid
execute if data entity @s {data:{state:"mid"}} run scoreboard players add @s mr.crop_plot_timer 1
execute if data entity @s {data:{state:"mid"}} if score @s mr.crop_plot_timer matches 2400.. run function mineraft:structures/crop_plot/shared/large/growth/to_full
