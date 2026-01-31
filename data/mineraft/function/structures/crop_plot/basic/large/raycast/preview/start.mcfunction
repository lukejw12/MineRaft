data modify storage mineraft:crop_plot crop_plot_type set from entity @s SelectedItem.components.minecraft:custom_data."mr.crop_plot_type"

execute positioned ~ ~ ~ anchored eyes run summon marker ~ ~ ~ {Tags:["mr.crop_plot_preview_raycast","mr.new_preview_ray"]}
execute anchored eyes run tp @e[type=marker,tag=mr.new_preview_ray,limit=1,sort=nearest] ~ ~ ~ ~ ~

execute as @e[type=marker,tag=mr.new_preview_ray,limit=1,sort=nearest] run scoreboard players operation @s mr.link = @p mr.link
execute as @e[type=marker,tag=mr.new_preview_ray,limit=1,sort=nearest] run data modify entity @s data.crop_plot_type set from storage mineraft:crop_plot crop_plot_type

tag @e[type=marker,tag=mr.new_preview_ray] remove mr.new_preview_ray

scoreboard players set @e[type=marker,tag=mr.crop_plot_preview_raycast,limit=1,sort=nearest] mr.raycast_dist 50

execute as @e[type=marker,tag=mr.crop_plot_preview_raycast,limit=1,sort=nearest] at @s run function mineraft:structures/crop_plot/basic/large/raycast/preview/loop