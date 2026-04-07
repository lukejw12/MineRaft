
execute if items entity @s weapon.mainhand *[custom_data~{mr.hammer:1b}] run function mineraft:items/hammer/raycast/preview/start
execute if items entity @s weapon.mainhand *[custom_data~{mr.hammer:1b}] run return run function mineraft:core/player/cleanup_previews {"keep":"mr.hammer_preview"}

execute if items entity @s weapon.mainhand *[custom_data~{mr.crop_plot:1b}] run function mineraft:core/player/crop_plot_preview
execute if items entity @s weapon.mainhand *[custom_data~{mr.crop_plot:1b}] if data entity @s SelectedItem.components.minecraft:custom_data{mr.crop_plot_type:"basic_crop_plot"} run return run function mineraft:core/player/cleanup_previews {"keep":"mr.basic_crop_plot_preview"}
execute if items entity @s weapon.mainhand *[custom_data~{mr.crop_plot:1b}] if data entity @s SelectedItem.components.minecraft:custom_data{mr.crop_plot_type:"advanced_crop_plot"} run return run function mineraft:core/player/cleanup_previews {"keep":"mr.advanced_crop_plot_preview"}
execute if items entity @s weapon.mainhand *[custom_data~{mr.crop_plot:1b}] if data entity @s SelectedItem.components.minecraft:custom_data{mr.crop_plot_type:"basic_small_crop_plot"} run return run function mineraft:core/player/cleanup_previews {"keep":"mr.small_crop_plot_preview"}
execute if items entity @s weapon.mainhand *[custom_data~{mr.crop_plot:1b}] if data entity @s SelectedItem.components.minecraft:custom_data{mr.crop_plot_type:"advanced_small_crop_plot"} run return run function mineraft:core/player/cleanup_previews {"keep":"mr.small_adv_crop_plot_preview"}

execute if items entity @s weapon.mainhand *[custom_data~{mr.wall:1b}] run function mineraft:structures/walls/raycast/preview/start
execute if items entity @s weapon.mainhand *[custom_data~{mr.wall:1b}] run return run function mineraft:core/player/cleanup_previews {"keep":"mr.wall_preview"}

execute if items entity @s weapon.mainhand *[custom_data~{mr.foundation:1b}] run function mineraft:core/foundation/check_display_type
execute if items entity @s weapon.mainhand *[custom_data~{mr.foundation:1b}] run function mineraft:core/raycast/start {"function":"mineraft:core/raycast/hit_foundation"}
execute if items entity @s weapon.mainhand *[custom_data~{mr.foundation:1b}] run return run function mineraft:core/player/cleanup_previews {"keep":"mr.display"}

execute if items entity @s weapon.mainhand *[custom_data~{mr.collection_net:1b}] run function mineraft:structures/collection_net/placement/validation/check_display_type
execute if items entity @s weapon.mainhand *[custom_data~{mr.collection_net:1b}] run function mineraft:core/raycast/start {"function":"mineraft:structures/collection_net/raycast/hit_preview"}
execute if items entity @s weapon.mainhand *[custom_data~{mr.collection_net:1b}] run return run function mineraft:core/player/cleanup_previews {"keep":"mr.net_preview"}

execute if items entity @s weapon.mainhand *[custom_data~{mr.smeltery:1b}] run function mineraft:structures/smeltery/raycast/preview/start
execute if items entity @s weapon.mainhand *[custom_data~{mr.smeltery:1b}] run return run function mineraft:core/player/cleanup_previews {"keep":"mr.smeltery_preview"}

execute if items entity @s weapon.mainhand *[custom_data~{mr.support:1b}] run function mineraft:structures/support/raycast/preview/start
execute if items entity @s weapon.mainhand *[custom_data~{mr.support:1b}] run return run function mineraft:core/player/cleanup_previews {"keep":"mr.support_preview"}

execute if items entity @s weapon.mainhand *[custom_data~{mr.platform:1b}] run function mineraft:structures/platform/raycast/preview/start
execute if items entity @s weapon.mainhand *[custom_data~{mr.platform:1b}] run return run function mineraft:core/player/cleanup_previews {"keep":"mr.platform_preview"}

execute if items entity @s weapon.mainhand *[custom_data~{mr.purifier:1b}] run function mineraft:structures/water_purifier/raycast/preview/start
execute if items entity @s weapon.mainhand *[custom_data~{mr.purifier:1b}] run return run function mineraft:core/player/cleanup_previews {"keep":"mr.purifier_preview"}

execute if items entity @s weapon.mainhand *[custom_data~{mr.stairs:1b}] run function mineraft:structures/stairs/raycast/preview/start
execute if items entity @s weapon.mainhand *[custom_data~{mr.stairs:1b}] run return run function mineraft:core/player/cleanup_previews {"keep":"mr.stairs_preview"}

execute if items entity @s weapon.mainhand *[custom_data~{mr.grill:1b}] run function mineraft:structures/grill/raycast/preview/start
execute if items entity @s weapon.mainhand *[custom_data~{mr.grill:1b}] run return run function mineraft:core/player/cleanup_previews {"keep":"mr.grill_preview"}

execute if items entity @s weapon.mainhand *[custom_data~{mr.foundation_armor:1b}] run function mineraft:items/foundation_armor/raycast/preview/start
execute if items entity @s weapon.mainhand *[custom_data~{mr.foundation_armor:1b}] run return run function mineraft:core/player/cleanup_previews {"keep":"mr.armor_preview"}

execute if items entity @s weapon.mainhand *[custom_data~{mr.recycler:1b}] run function mineraft:structures/recycler/raycast/preview/start
execute if items entity @s weapon.mainhand *[custom_data~{mr.recycler:1b}] run return run function mineraft:core/player/cleanup_previews {"keep":"mr.recycler_preview"}
function mineraft:core/player/cleanup_previews {"keep":"none"}
