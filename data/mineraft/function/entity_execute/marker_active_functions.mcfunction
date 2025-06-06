execute as @s[tag=extension] at @s run function mineraft:raft_extension/raft_extension_was_placed
execute as @s[tag=net_extension] at @s run function mineraft:raft_extension/collection_net/raft_extension_was_placed
execute as @s[tag=rain_collector] at @s run function mineraft:raft_utility/rain_collector/raft_extension_was_placed
execute as @s[tag=smeltery] at @s run function mineraft:raft_utility/smeltery/raft_extension_was_placed
execute as @s[tag=wooden_staircase] at @s run function mineraft:raft_decor/staircase/wooden_staircase/raft_extension_was_placed
execute as @s[tag=wooden_platform] at @s run function mineraft:raft_decor/platform/wooden_platform/raft_extension_was_placed
execute as @s[tag=wooden_support] at @s run function mineraft:raft_decor/pillar/wooden_pillar/raft_extension_was_placed
execute as @s[tag=foundation_armor] at @s run function mineraft:raft_extension/foundation_armor/raft_extension_was_placed
execute as @s[tag=tree_plot] at @s run function mineraft:raft_utility/crop_plots/large_crop_plot/raft_extension_was_placed
execute as @s[tag=crop_plot] at @s run function mineraft:raft_utility/crop_plots/crop_plot/raft_extension_was_placed
execute as @s[tag=water_purifier] at @s run function mineraft:raft_utility/water_purifier/raft_extension_was_placed
execute as @s[tag=simple_grill] at @s run function mineraft:raft_utility/grills/simple_grill/raft_extension_was_placed
execute as @s[tag=cooking_pot] at @s run function mineraft:raft_utility/cooking_pot/raft_extension_was_placed
execute as @s[tag=trophy_board] at @s run function mineraft:raft_decor/trophy_board/place_trophy_board
execute as @s[tag=solid_wooden_wall] at @s run function mineraft:raft_decor/wall/solid_wooden_wall/raft_extension_was_placed
execute as @s[tag=solid_l_junction_wall] at @s run function mineraft:raft_decor/wall/solid_wooden_wall/solid_l_junction_wall/raft_extension_was_placed
execute as @s[tag=recycler] at @s run function mineraft:raft_utility/recycler/raft_extension_was_placed



execute as @s[tag=solid_l_junction_wall_active] at @s run function mineraft:raft_decor/wall/solid_wooden_wall/solid_l_junction_wall/wall_ticking
execute as @s[tag=solid_wooden_wall_active] at @s run function mineraft:raft_decor/wall/solid_wooden_wall/wall_ticking
execute as @s[tag=active_net] at @s run function mineraft:raft_extension/collection_net/active_net/active_fishing_net
execute as @s[tag=raft_extension] at @s run function mineraft:raft_extension/extension_ticking
execute as @s[tag=wooden_stairs] at @s run function mineraft:raft_decor/staircase/wooden_staircase/extension_ticking
execute as @s[tag=rain_collector_active] at @s run function mineraft:raft_utility/rain_collector/collect_rain
execute as @s[tag=smeltery_active] at @s run function mineraft:raft_utility/smeltery/active_smelter
execute as @s[tag=wooden_platform_active] at @s run function mineraft:raft_decor/platform/wooden_platform/platform_ticking
execute as @s[tag=wooden_support_active] at @s run function mineraft:raft_decor/pillar/wooden_pillar/pillar_ticking
execute as @s[tag=tree_plot_active] at @s run function mineraft:raft_utility/crop_plots/large_crop_plot/active_tree_plot
execute as @s[tag=crop_plot_active] at @s run function mineraft:raft_utility/crop_plots/crop_plot/active_crop_plot
execute as @s[tag=water_purifier_active] at @s run function mineraft:raft_utility/water_purifier/active_water_purifier
execute as @s[tag=simple_grill_active] at @s run function mineraft:raft_utility/grills/simple_grill/active_grill
execute as @s[tag=cooking_pot_active] at @s run function mineraft:raft_utility/cooking_pot/active_cooking_pot

execute as @s[tag=trophy_board_active] at @s run function mineraft:raft_decor/trophy_board/update_trophy_board
execute as @s[tag=recycler_active] at @s run function mineraft:raft_utility/recycler/active_recycler
