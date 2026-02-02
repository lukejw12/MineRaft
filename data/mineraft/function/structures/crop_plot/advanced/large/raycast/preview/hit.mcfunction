scoreboard players operation #player_link mr.data = @s mr.link

data modify storage mineraft:crop_plot crop_plot_type set from entity @s data.crop_plot_type
scoreboard players operation #rotation mr.data = @s mr.data

execute unless entity @e[type=item_display,tag=mr.foundation,distance=..2] unless entity @e[type=item_display,tag=mr.platform_display,distance=..2] run return run function mineraft:structures/crop_plot/advanced/large/raycast/preview/hide

function mineraft:structures/crop_plot/advanced/large/placement/calculate_rotation

execute as @a if score @s mr.link = #player_link mr.data unless entity @e[type=item_display,tag=mr.crop_plot_preview] run function mineraft:structures/crop_plot/advanced/large/spawn/spawn_preview with storage mineraft:crop_plot

execute as @e[type=item_display,tag=mr.new_crop_plot_preview,limit=1] run scoreboard players operation @s mr.link = #player_link mr.data
tag @e[type=item_display,tag=mr.new_crop_plot_preview] remove mr.new_crop_plot_preview

execute align xyz as @e[type=item_display,tag=mr.crop_plot_preview] if score @s mr.link = #player_link mr.data run tp @s ~0.5 ~1.51 ~0.5
execute as @e[type=item_display,tag=mr.crop_plot_preview] if score @s mr.link = #player_link mr.data run function mineraft:structures/crop_plot/advanced/large/raycast/preview/apply_rotation with storage mineraft:crop_plot

kill @s

