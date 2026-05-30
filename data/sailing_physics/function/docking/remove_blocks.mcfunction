execute as @e[type=item_display,tag=mr.foundation] at @s run function sailing_physics:docking/clear_foundation_area
execute as @e[type=item_display,tag=mr.support_display] at @s run function sailing_physics:docking/clear_support_area
execute as @e[type=item_display,tag=mr.purifier_display] at @s run function sailing_physics:docking/remove_purifier_blocks
execute as @e[type=item_display,tag=mr.small_crop_plot_display] at @s run function sailing_physics:docking/remove_small_crop_block1
execute as @e[type=item_display,tag=mr.small_adv_crop_plot_display] at @s run function sailing_physics:docking/remove_small_crop_block1
execute as @e[type=item_display,tag=mr.campfire_display] at @s run setblock ~ ~ ~ air
