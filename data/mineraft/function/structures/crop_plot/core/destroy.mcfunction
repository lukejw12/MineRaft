scoreboard players operation #crop_plot_id mr.data = @s mr.crop_plot_id

execute as @e[type=item_display,tag=mr.crop_plot_display] if score @s mr.crop_plot_id = #crop_plot_id mr.data at @s if entity @e[type=item_display,tag=mr.wall_display,distance=..3] run function mineraft:structures/crop_plot/utils/restore/wall_trapdoor

fill ~1 ~ ~1 ~-1 ~ ~-1 air replace barrier

execute as @e[type=item_display,tag=mr.crop_plot_display] if score @s mr.crop_plot_id = #crop_plot_id mr.data run kill @s
execute as @e[type=interaction,tag=mr.crop_plot_interaction] if score @s mr.crop_plot_id = #crop_plot_id mr.data run kill @s

particle item{item:{id:egg,components:{item_model:"mineraft:particle/wood"}}} ~ ~2.5 ~ 1 2 1 0.1 100 normal
playsound minecraft:entity.zombie.break_wooden_door block @a[distance=..15] ~ ~ ~ 0.2 1.5

data remove entity @s attack
kill @s