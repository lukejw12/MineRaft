function mineraft:core/break_structure
scoreboard players operation #crop_plot_id mr.data = @s mr.crop_plot_id

execute as @e[type=item_display,tag=mr.small_crop_plot_display] if score @s mr.crop_plot_id = #crop_plot_id mr.data at @s run function mineraft:structures/crop_plot/basic/small/utils/restore/wall_trapdoor

data modify storage mineraft:crop_plot block1_offset_x set from entity @s data.block1_offset_x
data modify storage mineraft:crop_plot block1_offset_z set from entity @s data.block1_offset_z

execute at @s run setblock ~ ~ ~ air
execute at @s run function mineraft:structures/crop_plot/basic/small/utils/blocks/remove_block1 with storage mineraft:crop_plot

execute as @e[type=item_display,tag=mr.small_crop_plot_display] if score @s mr.crop_plot_id = #crop_plot_id mr.data at @s run function mineraft:grid/block/release_1x2_at_pos

kill @s
execute as @e[type=item_display,tag=mr.small_crop_display] if score @s mr.crop_plot_id = #crop_plot_id mr.data run kill @s
execute as @e[type=interaction,tag=mr.small_crop_plot_interaction] if score @s mr.crop_plot_id = #crop_plot_id mr.data run kill @s


kill @s