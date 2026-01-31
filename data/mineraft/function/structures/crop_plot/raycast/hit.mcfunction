scoreboard players operation #player_link mr.data = @s mr.link

data modify storage mineraft:crop_plot crop_plot_type set from entity @s data.crop_plot_type

execute unless entity @e[type=item_display,tag=mr.foundation,distance=..2] unless entity @e[type=item_display,tag=mr.platform_display,distance=..2] run return run kill @s

execute as @e[type=item_display,tag=mr.foundation,distance=..2,limit=1,sort=nearest] at @s align xyz positioned ~0.5 ~1 ~0.5 if entity @e[type=item_display,tag=mr.crop_plot_display,distance=..0.5] run kill @e[type=marker,tag=mr.crop_plot_raycast,limit=1,sort=nearest]
execute as @e[type=item_display,tag=mr.foundation,distance=..2,limit=1,sort=nearest] at @s align xyz positioned ~0.5 ~1 ~0.5 if entity @e[type=item_display,tag=mr.crop_plot_display,distance=..0.5] run return fail

execute as @e[type=item_display,tag=mr.platform_display,distance=..2,limit=1,sort=nearest] at @s positioned ~ ~0.5 ~ if entity @e[type=item_display,tag=mr.crop_plot_display,distance=..0.5] run kill @e[type=marker,tag=mr.crop_plot_raycast,limit=1,sort=nearest]
execute as @e[type=item_display,tag=mr.platform_display,distance=..2,limit=1,sort=nearest] at @s positioned ~ ~0.5 ~ if entity @e[type=item_display,tag=mr.crop_plot_display,distance=..0.5] run return fail

execute as @e[type=item_display,tag=mr.foundation,distance=..2,limit=1,sort=nearest] at @s align xyz positioned ~0.5 ~1 ~0.5 run function mineraft:structures/crop_plot/placement/check_space
execute unless entity @e[type=item_display,tag=mr.foundation,distance=..2] as @e[type=item_display,tag=mr.platform_display,distance=..2,limit=1,sort=nearest] at @s positioned ~ ~0.3 ~ run function mineraft:structures/crop_plot/placement/check_space

kill @s