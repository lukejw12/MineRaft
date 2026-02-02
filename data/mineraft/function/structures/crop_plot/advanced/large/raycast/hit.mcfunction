scoreboard players operation #player_link mr.data = @s mr.link

data modify storage mineraft:crop_plot crop_plot_type set from entity @s data.crop_plot_type
scoreboard players operation #rotation mr.data = @s mr.data

execute unless entity @e[type=item_display,tag=mr.foundation,distance=..2] unless entity @e[type=item_display,tag=mr.platform_display,distance=..2] run return run kill @s

function mineraft:structures/crop_plot/advanced/large/placement/calculate_rotation

execute if entity @e[type=item_display,tag=mr.crop_plot_display,distance=..1] run kill @e[type=marker,tag=mr.crop_plot_raycast,limit=1,sort=nearest]
execute if entity @e[type=item_display,tag=mr.crop_plot_display,distance=..1] run return fail

execute align xyz positioned ~ ~1 ~ run function mineraft:structures/crop_plot/advanced/large/placement/check_space with storage mineraft:crop_plot

kill @s