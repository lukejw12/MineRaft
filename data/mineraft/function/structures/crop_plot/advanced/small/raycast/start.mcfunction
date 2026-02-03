execute positioned ~ ~ ~ anchored eyes run summon marker ~ ~ ~ {Tags:["mr.small_adv_crop_plot_raycast","mr.new_ray"]}
execute anchored eyes run tp @e[type=marker,tag=mr.new_ray,limit=1,sort=nearest] ~ ~ ~ ~ ~

execute as @e[type=marker,tag=mr.new_ray,limit=1,sort=nearest] run scoreboard players operation @s mr.link = @p mr.link
execute as @e[type=marker,tag=mr.new_ray,limit=1,sort=nearest] run data modify entity @s data.crop_plot_type set from storage mineraft:crop_plot crop_plot_type
execute as @e[type=marker,tag=mr.new_ray,limit=1,sort=nearest] run scoreboard players operation @s mr.data = #player_rot mr.data

tag @e[type=marker,tag=mr.new_ray] remove mr.new_ray

scoreboard players set @e[type=marker,tag=mr.small_adv_crop_plot_raycast,limit=1,sort=nearest] mr.raycast_dist 50

execute as @e[type=marker,tag=mr.small_adv_crop_plot_raycast,limit=1,sort=nearest] at @s run function mineraft:structures/crop_plot/advanced/small/raycast/loop