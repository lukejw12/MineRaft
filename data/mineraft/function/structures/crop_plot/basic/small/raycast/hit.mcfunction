scoreboard players operation #player_link mr.data = @s mr.link

data modify storage mineraft:crop_plot crop_plot_type set from entity @s data.crop_plot_type

scoreboard players operation #rotation mr.data = @s mr.data
function mineraft:structures/crop_plot/basic/small/placement/calculate_rotation

execute align xyz positioned ~ ~ ~ if entity @e[type=item_display,tag=mr.small_crop_plot_display,distance=..0.5] run return run kill @s
execute align xyz positioned ~ ~ ~ if entity @e[type=item_display,tag=mr.purifier_display,distance=..0.5] run return run kill @s
execute align xyz positioned ~ ~ ~ if entity @e[type=item_display,tag=mr.smeltery_display,distance=..0.5] run return run kill @s
say test
function mineraft:structures/crop_plot/basic/small/placement/check_space with storage mineraft:crop_plot