scoreboard players operation #player_link mr.data = @s mr.link

data modify storage mineraft:crop_plot crop_plot_type set from entity @s data.crop_plot_type

scoreboard players operation #rotation mr.data = @s mr.data
function mineraft:structures/crop_plot/advanced/small/placement/calculate_rotation

execute align xyz positioned ~0.5 ~ ~0.5 if entity @e[type=item_display,tag=mr.small_adv_crop_plot_display,distance=..1] run return run kill @s
execute align xyz positioned ~0.5 ~ ~0.5 if entity @e[type=item_display,tag=mr.purifier_display,distance=..1] run return run kill @s
execute align xyz positioned ~0.5 ~ ~0.5 if entity @e[type=item_display,tag=mr.smeltery_display,distance=..1] run return run kill @s
execute align xyz positioned ~0.5 ~ ~0.5 if entity @e[type=item_display,tag=mr.grill_display,distance=..1] run return run kill @s

function mineraft:structures/crop_plot/advanced/small/placement/check_space with storage mineraft:crop_plot