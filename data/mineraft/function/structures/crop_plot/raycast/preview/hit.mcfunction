scoreboard players operation #player_link mr.data = @s mr.link

data modify storage mineraft:crop_plot crop_plot_type set from entity @s data.crop_plot_type

execute unless entity @e[type=item_display,tag=mr.foundation,distance=..2] unless entity @e[type=item_display,tag=mr.platform_display,distance=..2] run return run function mineraft:structures/crop_plot/raycast/preview/hide

execute as @a if score @s mr.link = #player_link mr.data unless entity @e[type=item_display,tag=mr.crop_plot_preview] run function mineraft:structures/crop_plot/spawn/spawn_preview with storage mineraft:crop_plot

execute as @e[type=item_display,tag=mr.new_crop_plot_preview,limit=1] run scoreboard players operation @s mr.link = #player_link mr.data
tag @e[type=item_display,tag=mr.new_crop_plot_preview] remove mr.new_crop_plot_preview

execute as @e[type=item_display,tag=mr.foundation,distance=..2,limit=1,sort=nearest] at @s align xyz as @e[type=item_display,tag=mr.crop_plot_preview] if score @s mr.link = #player_link mr.data run tp @s ~0.5 ~1.51 ~0.5
execute unless entity @e[type=item_display,tag=mr.foundation,distance=..2] as @e[type=item_display,tag=mr.platform_display,distance=..2,limit=1,sort=nearest] at @s as @e[type=item_display,tag=mr.crop_plot_preview] if score @s mr.link = #player_link mr.data run tp @s ~ ~0.51 ~

kill @s