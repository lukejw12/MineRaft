execute unless items entity @s weapon.mainhand *[custom_data~{mr.hammer:1b}] as @e[type=item_display,tag=mr.hammer_glowing] run function mineraft:items/hammer/raycast/preview/remove_glow

execute if items entity @s weapon.mainhand *[custom_data~{mr.hammer:1b}] run function mineraft:core/player/cleanup_all_previews
execute if items entity @s weapon.mainhand *[custom_data~{mr.hammer:1b}] run function mineraft:items/hammer/raycast/preview/start
execute if items entity @s weapon.mainhand *[custom_data~{mr.hammer:1b}] run return 0

execute if score #sp.sailing sp.data matches 1 run return 0

function mineraft:core/player/mark_previews_for_cleanup

execute if items entity @s weapon.mainhand *[custom_data~{mr.crop_plot:1b}] run tag @e[type=item_display,tag=mr.small_crop_plot_preview] remove mr.preview_cleanup
execute if items entity @s weapon.mainhand *[custom_data~{mr.crop_plot:1b}] run tag @e[type=item_display,tag=mr.small_adv_crop_plot_preview] remove mr.preview_cleanup
execute if items entity @s weapon.mainhand *[custom_data~{mr.crop_plot:1b}] run tag @e[type=item_display,tag=mr.basic_crop_plot_preview] remove mr.preview_cleanup
execute if items entity @s weapon.mainhand *[custom_data~{mr.crop_plot:1b}] run tag @e[type=item_display,tag=mr.advanced_crop_plot_preview] remove mr.preview_cleanup
execute if items entity @s weapon.mainhand *[custom_data~{mr.crop_plot:1b}] run tag @e[type=item_display,tag=mr.crop_plot_preview] remove mr.preview_cleanup
execute if items entity @s weapon.mainhand *[custom_data~{mr.crop_plot:1b}] run function mineraft:core/player/crop_plot_preview
execute if items entity @s weapon.mainhand *[custom_data~{mr.crop_plot:1b}] run return run function mineraft:core/player/kill_marked_previews

execute if items entity @s weapon.mainhand *[custom_data~{mr.wall:1b}] run tag @e[type=item_display,tag=mr.wall_preview] remove mr.preview_cleanup
execute if items entity @s weapon.mainhand *[custom_data~{mr.wall:1b}] run function mineraft:structures/walls/raycast/preview/start
execute if items entity @s weapon.mainhand *[custom_data~{mr.wall:1b}] run return run function mineraft:core/player/kill_marked_previews

execute if items entity @s weapon.mainhand *[custom_data~{mr.foundation:1b}] run tag @e[type=item_display,tag=mr.display] remove mr.preview_cleanup
execute if items entity @s weapon.mainhand *[custom_data~{mr.foundation:1b}] run function mineraft:core/foundation/check_display_type
execute if items entity @s weapon.mainhand *[custom_data~{mr.foundation:1b}] run function mineraft:core/raycast/start {"function":"mineraft:core/raycast/hit_foundation"}
execute if items entity @s weapon.mainhand *[custom_data~{mr.foundation:1b}] run return run function mineraft:core/player/kill_marked_previews

execute if items entity @s weapon.mainhand *[custom_data~{mr.collection_net:1b}] run tag @e[type=item_display,tag=mr.net_preview] remove mr.preview_cleanup
execute if items entity @s weapon.mainhand *[custom_data~{mr.collection_net:1b}] run function mineraft:structures/collection_net/placement/validation/check_display_type
execute if items entity @s weapon.mainhand *[custom_data~{mr.collection_net:1b}] run function mineraft:core/raycast/start {"function":"mineraft:structures/collection_net/raycast/hit_preview"}
execute if items entity @s weapon.mainhand *[custom_data~{mr.collection_net:1b}] run return run function mineraft:core/player/kill_marked_previews

execute if items entity @s weapon.mainhand *[custom_data~{mr.smeltery:1b}] run tag @e[type=item_display,tag=mr.smeltery_preview] remove mr.preview_cleanup
execute if items entity @s weapon.mainhand *[custom_data~{mr.smeltery:1b}] run function mineraft:structures/smeltery/raycast/preview/start
execute if items entity @s weapon.mainhand *[custom_data~{mr.smeltery:1b}] run return run function mineraft:core/player/kill_marked_previews

execute if items entity @s weapon.mainhand *[custom_data~{mr.support:1b}] run tag @e[type=item_display,tag=mr.support_preview] remove mr.preview_cleanup
execute if items entity @s weapon.mainhand *[custom_data~{mr.support:1b}] run function mineraft:structures/support/raycast/preview/start
execute if items entity @s weapon.mainhand *[custom_data~{mr.support:1b}] run return run function mineraft:core/player/kill_marked_previews

execute if items entity @s weapon.mainhand *[custom_data~{mr.platform:1b}] run tag @e[type=item_display,tag=mr.platform_preview] remove mr.preview_cleanup
execute if items entity @s weapon.mainhand *[custom_data~{mr.platform:1b}] run function mineraft:structures/platform/raycast/preview/start
execute if items entity @s weapon.mainhand *[custom_data~{mr.platform:1b}] run return run function mineraft:core/player/kill_marked_previews

execute if items entity @s weapon.mainhand *[custom_data~{mr.purifier:1b}] run tag @e[type=item_display,tag=mr.purifier_preview] remove mr.preview_cleanup
execute if items entity @s weapon.mainhand *[custom_data~{mr.purifier:1b}] run function mineraft:structures/water_purifier/raycast/preview/start
execute if items entity @s weapon.mainhand *[custom_data~{mr.purifier:1b}] run return run function mineraft:core/player/kill_marked_previews

execute if items entity @s weapon.mainhand *[custom_data~{mr.stairs:1b}] run tag @e[type=item_display,tag=mr.stairs_preview] remove mr.preview_cleanup
execute if items entity @s weapon.mainhand *[custom_data~{mr.stairs:1b}] run function mineraft:structures/stairs/raycast/preview/start
execute if items entity @s weapon.mainhand *[custom_data~{mr.stairs:1b}] run return run function mineraft:core/player/kill_marked_previews

execute if items entity @s weapon.mainhand *[custom_data~{mr.campfire:1b}] run tag @e[type=item_display,tag=mr.campfire_preview] remove mr.preview_cleanup
execute if items entity @s weapon.mainhand *[custom_data~{mr.campfire:1b}] run tag @e[type=block_display,tag=mr.campfire_block_preview] remove mr.preview_cleanup
execute if items entity @s weapon.mainhand *[custom_data~{mr.campfire:1b}] run function mineraft:structures/campfire/raycast/preview/start
execute if items entity @s weapon.mainhand *[custom_data~{mr.campfire:1b}] run return run function mineraft:core/player/kill_marked_previews

execute if items entity @s weapon.mainhand *[custom_data~{mr.foundation_armor:1b}] run tag @e[type=item_display,tag=mr.armor_preview] remove mr.preview_cleanup
execute if items entity @s weapon.mainhand *[custom_data~{mr.foundation_armor:1b}] run function mineraft:items/foundation_armor/raycast/preview/start
execute if items entity @s weapon.mainhand *[custom_data~{mr.foundation_armor:1b}] run return run function mineraft:core/player/kill_marked_previews

execute if items entity @s weapon.mainhand *[custom_data~{mr.recycler:1b}] run tag @e[type=item_display,tag=mr.recycler_preview] remove mr.preview_cleanup
execute if items entity @s weapon.mainhand *[custom_data~{mr.recycler:1b}] run function mineraft:structures/recycler/raycast/preview/start
execute if items entity @s weapon.mainhand *[custom_data~{mr.recycler:1b}] run return run function mineraft:core/player/kill_marked_previews

function mineraft:core/player/kill_marked_previews
