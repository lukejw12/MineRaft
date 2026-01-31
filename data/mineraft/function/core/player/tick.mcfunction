execute as @s[tag=!mr.has_ray_id] run function mineraft:core/player/link

execute as @e[type=item_display,tag=mr.foundation,distance=..10] at @s run function mineraft:core/foundation/tick
execute if items entity @s weapon.mainhand *[custom_data~{mr.foundation:1b}] run function mineraft:core/foundation/check_display_type
execute if items entity @s weapon.mainhand *[custom_data~{mr.collection_net:1b}] run function mineraft:structures/collection_net/placement/validation/check_display_type

execute if items entity @s weapon.mainhand *[custom_data~{mr.hammer:1b}] at @s anchored eyes positioned ^ ^ ^ anchored feet run function mineraft:items/hammer/raycast/preview/start

execute if items entity @s weapon.mainhand *[custom_data~{mr.wall:1b}] at @s anchored eyes positioned ^ ^ ^ anchored feet run function mineraft:structures/walls/raycast/preview/start
execute if items entity @s weapon.mainhand *[custom_data~{mr.collection_net:1b}] at @s anchored eyes positioned ^ ^ ^ anchored feet run function mineraft:core/raycast/start {"function":"mineraft:structures/collection_net/raycast/hit_preview"}
execute if items entity @s weapon.mainhand *[custom_data~{mr.foundation:1b}] at @s anchored eyes positioned ^ ^ ^ anchored feet run function mineraft:core/raycast/start {"function":"mineraft:core/raycast/hit_foundation"}
execute if items entity @s weapon.mainhand *[custom_data~{mr.smeltery:1b}] at @s anchored eyes positioned ^ ^ ^ anchored feet run function mineraft:structures/smeltery/raycast/preview/start
execute if items entity @s weapon.mainhand *[custom_data~{mr.support:1b}] at @s anchored eyes positioned ^ ^ ^ anchored feet run function mineraft:structures/support/raycast/preview/start
execute if items entity @s weapon.mainhand *[custom_data~{mr.platform:1b}] at @s anchored eyes positioned ^ ^ ^ anchored feet run function mineraft:structures/platform/raycast/preview/start
execute if items entity @s weapon.mainhand *[custom_data~{mr.purifier:1b}] at @s anchored eyes positioned ^ ^ ^ anchored feet run function mineraft:structures/water_purifier/raycast/preview/start
execute if items entity @s weapon.mainhand *[custom_data~{mr.stairs:1b}] at @s anchored eyes positioned ^ ^ ^ anchored feet run function mineraft:structures/stairs/raycast/preview/start
execute if items entity @s weapon.mainhand *[custom_data~{mr.crop_plot:1b}] at @s anchored eyes positioned ^ ^ ^ anchored feet run function mineraft:structures/crop_plot/basic/large/raycast/preview/start

execute as @s[tag=mr.place] at @s anchored eyes positioned ^ ^ ^ anchored feet run function mineraft:core/raycast/start {"function":"mineraft:core/raycast/helpers/place_foundation"}
execute as @s[tag=mr.place_net] at @s anchored eyes positioned ^ ^ ^ anchored feet run function mineraft:core/raycast/start {"function":"mineraft:structures/collection_net/raycast/place_net"}
execute unless items entity @s weapon.mainhand *[custom_data~{mr.hammer:1b}] as @e[type=item_display,tag=mr.hammer_preview] if score @s mr.link = @p mr.link run kill @s
execute unless items entity @s weapon.mainhand *[custom_data~{mr.wall:1b}] as @e[type=item_display,tag=mr.wall_preview] if score @s mr.link = @p mr.link run kill @s
execute unless items entity @s weapon.mainhand *[custom_data~{mr.foundation:1b}] as @e[type=item_display,tag=mr.display] if score @s mr.link = @p mr.link run kill @s
execute unless items entity @s weapon.mainhand *[custom_data~{mr.smeltery:1b}] as @e[type=item_display,tag=mr.smeltery_preview] if score @s mr.link = @p mr.link run kill @s
execute unless items entity @s weapon.mainhand *[custom_data~{mr.collection_net:1b}] as @e[type=item_display,tag=mr.net_preview] if score @s mr.link = @p mr.link run kill @s
execute unless items entity @s weapon.mainhand *[custom_data~{mr.support:1b}] as @e[type=item_display,tag=mr.support_preview] if score @s mr.link = @p mr.link run kill @s
execute unless items entity @s weapon.mainhand *[custom_data~{mr.platform:1b}] as @e[type=item_display,tag=mr.platform_preview] if score @s mr.link = @p mr.link run kill @s
execute unless items entity @s weapon.mainhand *[custom_data~{mr.purifier:1b}] as @e[type=item_display,tag=mr.purifier_preview] if score @s mr.link = @p mr.link run kill @s
execute unless items entity @s weapon.mainhand *[custom_data~{mr.stairs:1b}] as @e[type=item_display,tag=mr.stairs_preview] if score @s mr.link = @p mr.link run kill @s
execute unless items entity @s weapon.mainhand *[custom_data~{mr.crop_plot:1b}] as @e[type=item_display,tag=mr.crop_plot_preview] if score @s mr.link = @p mr.link run kill @s