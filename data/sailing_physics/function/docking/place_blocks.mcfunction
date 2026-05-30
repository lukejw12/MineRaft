kill @e[tag=sp.campfire_block]
kill @e[tag=sp.grill_block]
execute as @e[tag=sp.raft_entity,tag=mr.foundation] at @s run fill ~1 62 ~1 ~-1 61 ~-1 barrier[waterlogged=true]
execute as @e[tag=sp.raft_entity,tag=mr.net_display] at @s run setblock ~ 62 ~ water
execute as @e[tag=sp.raft_entity,tag=mr.net_display] at @s run setblock ~ 61 ~ water

execute as @e[tag=sp.raft_entity,tag=mr.support_display] at @s run setblock ~ ~ ~ iron_bars
execute as @e[tag=sp.raft_entity,tag=mr.support_display] at @s run setblock ~ ~1 ~ iron_bars
execute as @e[tag=sp.raft_entity,tag=mr.support_display] at @s run setblock ~ ~2 ~ iron_bars

execute as @e[tag=sp.raft_entity,tag=mr.platform_display] at @s positioned ~-1 ~ ~-1 run fill ~2 ~ ~2 ~ ~ ~ barrier replace air
execute as @e[tag=sp.raft_entity,tag=mr.platform_display] at @s positioned ~-1 ~ ~-1 run fill ~2 ~ ~2 ~ ~ ~ barrier replace iron_bars

execute as @e[tag=sp.raft_entity,tag=mr.wall_display] at @s run function sailing_physics:docking/place_wall_trapdoors

execute as @e[tag=sp.raft_entity,tag=mr.smeltery_display] at @s run setblock ~ ~ ~ barrier
execute as @e[tag=sp.raft_entity,tag=mr.campfire_display] at @s run setblock ~ ~ ~ campfire[lit=false]

execute as @e[tag=sp.raft_entity,tag=mr.purifier_display] at @s run function sailing_physics:docking/place_purifier_blocks
execute as @e[tag=sp.raft_entity,tag=mr.recycler_display] at @s run setblock ~ ~ ~ barrier
execute as @e[tag=sp.raft_entity,tag=mr.recycler_display] at @s run setblock ~ ~1 ~ barrier

execute as @e[tag=sp.raft_entity,tag=mr.crop_plot_display] at @s positioned ~-1 ~ ~-1 run fill ~2 ~ ~2 ~ ~ ~ barrier replace air
execute as @e[tag=sp.raft_entity,tag=mr.small_crop_plot_display] at @s run setblock ~ ~ ~ barrier
execute as @e[tag=sp.raft_entity,tag=mr.small_crop_plot_display] at @s run function sailing_physics:docking/place_small_crop_block1
execute as @e[tag=sp.raft_entity,tag=mr.small_adv_crop_plot_display] at @s run setblock ~ ~ ~ barrier
execute as @e[tag=sp.raft_entity,tag=mr.small_adv_crop_plot_display] at @s run function sailing_physics:docking/place_small_crop_block1

execute as @e[tag=sp.raft_entity,tag=mr.stairs_display] at @s run function mineraft:structures/stairs/core/reposition_shulkers
