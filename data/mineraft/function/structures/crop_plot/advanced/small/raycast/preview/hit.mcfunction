scoreboard players operation #player_link mr.data = @s mr.link

data modify storage mineraft:crop_plot crop_plot_type set from entity @s data.crop_plot_type
scoreboard players operation #rotation mr.data = @s mr.data
function mineraft:structures/crop_plot/advanced/small/placement/calculate_rotation

execute align xyz positioned ~0.5 ~ ~0.5 if entity @e[type=item_display,tag=mr.small_adv_crop_plot_display,distance=..1] run return run function mineraft:structures/crop_plot/advanced/small/raycast/preview/hide
execute align xyz positioned ~0.5 ~ ~0.5 if entity @e[type=item_display,tag=mr.purifier_display,distance=..1] run return run function mineraft:structures/crop_plot/advanced/small/raycast/preview/hide
execute align xyz positioned ~0.5 ~ ~0.5 if entity @e[type=item_display,tag=mr.smeltery_display,distance=..1] run return run function mineraft:structures/crop_plot/advanced/small/raycast/preview/hide

execute as @a if score @s mr.link = #player_link mr.data unless entity @e[type=item_display,tag=mr.small_adv_crop_plot_preview] if score @s mr.link = #player_link mr.data run function mineraft:structures/crop_plot/advanced/small/spawn/spawn_preview with storage mineraft:crop_plot

execute as @e[type=item_display,tag=mr.new_small_adv_crop_plot_preview,limit=1] run scoreboard players operation @s mr.link = #player_link mr.data
tag @e[type=item_display,tag=mr.new_small_adv_crop_plot_preview] remove mr.new_small_adv_crop_plot_preview

execute align xyz positioned ~ ~1 ~ as @e[type=item_display,tag=mr.small_adv_crop_plot_preview] if score @s mr.link = #player_link mr.data run tp @s ~0.5 ~0.5 ~0.5
execute align xyz positioned ~ ~1 ~ as @e[type=item_display,tag=mr.small_adv_crop_plot_preview] if score @s mr.link = #player_link mr.data run function mineraft:structures/crop_plot/advanced/small/raycast/preview/apply_rotation with storage mineraft:crop_plot

kill @s