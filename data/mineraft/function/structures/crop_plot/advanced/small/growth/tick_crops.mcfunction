scoreboard players operation #crop_plot_id mr.data = @s mr.crop_plot_id

execute as @e[type=item_display,tag=mr.small_adv_crop_display] if score @s mr.crop_plot_id = #crop_plot_id mr.data unless data entity @s {data:{state:"empty"}} unless data entity @s {data:{state:"stage3"}} run function mineraft:structures/crop_plot/advanced/small/growth/advance_crop