function mineraft:core/break_structure
scoreboard players operation #crop_plot_id mr.data = @s mr.crop_plot_id

execute as @e[type=item_display,tag=mr.crop_plot_display] if score @s mr.crop_plot_id = #crop_plot_id mr.data at @s run function mineraft:structures/crop_plot/basic/large/utils/restore/wall_trapdoor

fill ~1 ~ ~1 ~-1 ~ ~-1 air replace barrier

execute positioned ~0.5 ~-1 ~0.5 as @e[type=item_display,tag=mr.surface,distance=..3,limit=1,sort=nearest] run function mineraft:grid/block/clear_height_block
execute positioned ~0.5 ~-1 ~0.5 as @e[type=item_display,tag=mr.surface,distance=..5,limit=1,sort=nearest] run function mineraft:grid/block/release_all

kill @s
execute as @e[type=interaction,tag=mr.crop_plot_interaction] if score @s mr.crop_plot_id = #crop_plot_id mr.data run kill @s


data remove entity @s attack
kill @s
