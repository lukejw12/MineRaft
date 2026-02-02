scoreboard players operation #crop_plot_id mr.data = @s mr.crop_plot_id

execute as @e[type=item_display,tag=mr.crop_plot_display] if score @s mr.crop_plot_id = #crop_plot_id mr.data if data entity @s {data:{state:"full"}} run function mineraft:structures/crop_plot/basic/large/interaction/harvest

data remove entity @s attack