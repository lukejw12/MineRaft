execute on target run tag @s add mr.interacting

execute as @e[type=item_display,tag=mr.small_adv_crop_plot_display] if score @s mr.crop_plot_id = @e[type=interaction,tag=mr.small_adv_crop_plot_interaction,sort=nearest,limit=1] mr.crop_plot_id run tag @s add mr.target_crop_plot

execute as @a[tag=mr.interacting] if items entity @s weapon.mainhand *[custom_data~{mr.seed:1b}] run function mineraft:structures/crop_plot/advanced/small/interaction/plant
execute as @a[tag=mr.interacting] if items entity @s weapon.mainhand *[custom_data~{mr.filled_cup:1b,mr.water_type:"freshwater"}] run function mineraft:structures/crop_plot/advanced/small/interaction/water
execute as @a[tag=mr.interacting] run function mineraft:structures/crop_plot/advanced/small/interaction/harvest
execute on target if items entity @s weapon.mainhand *[custom_data~{mr.hammer:1b}] as @e[type=item_display,tag=mr.small_adv_crop_plot_display] if score @s mr.crop_plot_id = @e[type=interaction,tag=mr.small_adv_crop_plot_interaction,sort=nearest,limit=1] mr.crop_plot_id run function mineraft:structures/crop_plot/advanced/small/core/destroy

data remove entity @s interaction
tag @a remove mr.interacting
tag @e remove mr.target_crop_plot