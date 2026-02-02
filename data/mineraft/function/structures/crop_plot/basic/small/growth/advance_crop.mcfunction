scoreboard players add @s mr.crop_plot_timer 1

execute if score @s mr.crop_plot_timer matches 800.. if data entity @s {data:{state:"stage0"}} run function mineraft:structures/crop_plot/basic/small/growth/to_stage1
execute if score @s mr.crop_plot_timer matches 800.. if data entity @s {data:{state:"stage1"}} run function mineraft:structures/crop_plot/basic/small/growth/to_stage2
execute if score @s mr.crop_plot_timer matches 800.. if data entity @s {data:{state:"stage2"}} run function mineraft:structures/crop_plot/basic/small/growth/to_stage3