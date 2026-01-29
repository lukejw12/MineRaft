data modify storage mineraft:stairs stairs_type set from entity @s SelectedItem.components.minecraft:custom_data."mr.stairs_type"

execute store result score #player_rot mr.data run data get entity @s Rotation[0]

execute positioned ~ ~ ~ anchored eyes run summon marker ~ ~ ~ {Tags:["mr.stairs_preview_raycast","mr.new_preview_ray"]}
execute anchored eyes run tp @e[type=marker,tag=mr.new_preview_ray,limit=1,sort=nearest] ~ ~ ~ ~ ~

execute as @e[type=marker,tag=mr.new_preview_ray,limit=1,sort=nearest] run scoreboard players operation @s mr.link = @p mr.link
execute as @e[type=marker,tag=mr.new_preview_ray,limit=1,sort=nearest] run data modify entity @s data.stairs_type set from storage mineraft:stairs stairs_type
execute as @e[type=marker,tag=mr.new_preview_ray,limit=1,sort=nearest] run scoreboard players operation @s mr.data = #player_rot mr.data

tag @e[type=marker,tag=mr.new_preview_ray] remove mr.new_preview_ray

scoreboard players set @e[type=marker,tag=mr.stairs_preview_raycast,limit=1,sort=nearest] mr.raycast_dist 50

execute as @e[type=marker,tag=mr.stairs_preview_raycast,limit=1,sort=nearest] at @s run function mineraft:structures/stairs/raycast/preview/loop