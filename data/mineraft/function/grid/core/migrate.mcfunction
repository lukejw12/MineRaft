
execute as @e[type=item_display,tag=mr.center] unless data entity @s data.grid.cx run data remove entity @s data.grid
execute as @e[type=item_display,tag=mr.center] run function mineraft:grid/core/init

execute as @e[type=item_display,tag=mr.platform_display] unless data entity @s data.grid.cx run data remove entity @s data.grid
execute as @e[type=item_display,tag=mr.platform_display] run function mineraft:grid/core/init

execute as @e[type=item_display,tag=mr.smeltery_display] at @s run function mineraft:grid/core/migrate_1x1 {type:"smeltery"}
execute as @e[type=item_display,tag=mr.grill_display] at @s run function mineraft:grid/core/migrate_1x1 {type:"grill"}

execute as @e[type=item_display,tag=mr.purifier_display] at @s run function mineraft:grid/core/migrate_1x2
execute as @e[type=item_display,tag=mr.small_crop_plot_display] at @s run function mineraft:grid/core/migrate_1x2
execute as @e[type=item_display,tag=mr.small_adv_crop_plot_display] at @s run function mineraft:grid/core/migrate_1x2

execute as @e[type=item_display,tag=mr.wall_display] at @s run function mineraft:grid/core/migrate_wall

execute as @e[type=item_display,tag=mr.stairs_display] at @s run function mineraft:grid/core/register_stairs_edge

execute as @e[type=item_display,tag=mr.support_display] at @s run function mineraft:grid/support/register

execute as @e[type=item_display,tag=mr.crop_plot_display] at @s positioned ~0.5 ~-1 ~0.5 as @e[type=item_display,tag=mr.surface,distance=..3,limit=1,sort=nearest] run function mineraft:grid/block/set_height_block {height:5}

execute as @e[type=item_display,tag=mr.platform_display] at @s run function mineraft:grid/core/migrate_platform_count
