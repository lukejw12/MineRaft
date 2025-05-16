execute if entity @s[tag=extension] as @s[tag=extension] at @s run function mineraft:raft_extension/raft_extension_was_placed
execute if entity @s[tag=net_extension] as @s[tag=net_extension] at @s run function mineraft:raft_extension/collection_net/raft_extension_was_placed
execute if entity @s[tag=rain_collector] as @s[tag=rain_collector] at @s run function mineraft:raft_utility/rain_collector/raft_extension_was_placed
execute if entity @s[tag=smeltery] as @s[tag=smeltery] at @s run function mineraft:raft_utility/smeltery/raft_extension_was_placed
execute if entity @s[tag=wooden_staircase] as @s[tag=wooden_staircase] at @s run function mineraft:raft_decor/staircase/wooden_staircase/raft_extension_was_placed
execute if entity @s[tag=wooden_platform] as @s[tag=wooden_platform] at @s run function mineraft:raft_decor/platform/wooden_platform/raft_extension_was_placed
execute if entity @s[tag=wooden_support] as @s[tag=wooden_support] at @s run function mineraft:raft_decor/pillar/wooden_pillar/raft_extension_was_placed
execute if entity @s[tag=foundation_armor] as @s[tag=foundation_armor] at @s run function mineraft:raft_extension/foundation_armor/raft_extension_was_placed
execute if entity @s[tag=tree_plot] as @s[tag=tree_plot] at @s run function mineraft:raft_utility/crop_plots/large_crop_plot/raft_extension_was_placed
execute if entity @s[tag=crop_plot] as @s[tag=crop_plot] at @s run function mineraft:raft_utility/crop_plots/crop_plot/raft_extension_was_placed
execute if entity @s[tag=water_purifier] as @s[tag=water_purifier] at @s run function mineraft:raft_utility/water_purifier/raft_extension_was_placed
execute if entity @s[tag=simple_grill] as @s[tag=simple_grill] at @s run function mineraft:raft_utility/grills/simple_grill/raft_extension_was_placed
execute if entity @s[tag=cooking_pot] as @s[tag=cooking_pot] at @s run function mineraft:raft_utility/cooking_pot/raft_extension_was_placed
execute if entity @s[tag=trophy_board] as @s[tag=trophy_board] at @s run function mineraft:raft_decor/trophy_board/place_trophy_board
execute if entity @s[tag=solid_wooden_wall] as @s[tag=solid_wooden_wall] at @s run function mineraft:raft_decor/wall/solid_wooden_wall/raft_extension_was_placed



execute if entity @s[tag=solid_wooden_wall_active] as @s[tag=solid_wooden_wall_active] at @s run function mineraft:raft_decor/wall/solid_wooden_wall/wall_ticking
execute if entity @s[tag=active_net] as @s[tag=active_net] at @s run function mineraft:raft_extension/collection_net/active_net/active_fishing_net
execute if entity @s[tag=raft_extension] as @s[tag=raft_extension] at @s run function mineraft:raft_extension/extension_ticking
execute if entity @s[tag=wooden_stairs] as @s[tag=wooden_stairs] at @s run function mineraft:raft_decor/staircase/wooden_staircase/extension_ticking
execute if entity @s[tag=rain_collector_active] as @s[tag=rain_collector_active] at @s run function mineraft:raft_utility/rain_collector/collect_rain
execute if entity @s[tag=smeltery_active] as @s[tag=smeltery_active] at @s run function mineraft:raft_utility/smeltery/active_smelter
execute if entity @s[tag=wooden_platform_active] as @s[tag=wooden_platform_active] at @s run function mineraft:raft_decor/platform/wooden_platform/platform_ticking
execute if entity @s[tag=wooden_support_active] as @s[tag=wooden_support_active] at @s run function mineraft:raft_decor/pillar/wooden_pillar/pillar_ticking
execute if entity @s[tag=tree_plot_active] as @s[tag=tree_plot_active] at @s run function mineraft:raft_utility/crop_plots/large_crop_plot/active_tree_plot
execute if entity @s[tag=crop_plot_active] as @s[tag=crop_plot_active] at @s run function mineraft:raft_utility/crop_plots/crop_plot/active_crop_plot
execute if entity @s[tag=water_purifier_active] as @s[tag=water_purifier_active] at @s run function mineraft:raft_utility/water_purifier/active_water_purifier
execute if entity @s[tag=simple_grill_active] as @s[tag=simple_grill_active] at @s run function mineraft:raft_utility/grills/simple_grill/active_grill
execute if entity @s[tag=cooking_pot_active] as @s[tag=cooking_pot_active] at @s run function mineraft:raft_utility/cooking_pot/active_cooking_pot

execute as @s[tag=trophy_board_active] at @s run function mineraft:raft_decor/trophy_board/update_trophy_board
 