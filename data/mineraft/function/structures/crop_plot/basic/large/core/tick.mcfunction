execute unless block ~1 ~ ~1 barrier run function mineraft:structures/crop_plot/basic/large/core/destroy
execute unless block ~1 ~ ~ barrier run function mineraft:structures/crop_plot/basic/large/core/destroy
execute unless block ~1 ~ ~-1 barrier run function mineraft:structures/crop_plot/basic/large/core/destroy
execute unless block ~ ~ ~1 barrier run function mineraft:structures/crop_plot/basic/large/core/destroy
execute unless block ~ ~ ~ barrier run function mineraft:structures/crop_plot/basic/large/core/destroy
execute unless block ~ ~ ~-1 barrier run function mineraft:structures/crop_plot/basic/large/core/destroy
execute unless block ~-1 ~ ~1 barrier run function mineraft:structures/crop_plot/basic/large/core/destroy
execute unless block ~-1 ~ ~ barrier run function mineraft:structures/crop_plot/basic/large/core/destroy
execute unless block ~-1 ~ ~-1 barrier run function mineraft:structures/crop_plot/basic/large/core/destroy
execute unless block ~ ~-1 ~ barrier run function mineraft:structures/crop_plot/basic/large/core/destroy

execute if data entity @s {data:{state:"sapling_watered"}} run scoreboard players add @s mr.crop_plot_timer 1
execute if data entity @s {data:{state:"sapling_watered"}} if score @s mr.crop_plot_timer matches 3600.. run function mineraft:structures/crop_plot/shared/large/growth/to_mid
execute if data entity @s {data:{state:"mid"}} run scoreboard players add @s mr.crop_plot_timer 1
execute if data entity @s {data:{state:"mid"}} if score @s mr.crop_plot_timer matches 2400.. run function mineraft:structures/crop_plot/shared/large/growth/to_full
