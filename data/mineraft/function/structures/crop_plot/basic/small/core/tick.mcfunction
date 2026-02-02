execute unless block ~ ~-1 ~ barrier run function mineraft:structures/crop_plot/basic/small/core/destroy

execute if data entity @s {data:{state:"watered"}} run function mineraft:structures/crop_plot/basic/small/growth/tick_crops