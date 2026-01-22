
data modify storage mineraft:platform platform_type set from entity @s SelectedItem.components.minecraft:custom_data."mr.platform_type"

execute store result score #player_rot mr.data run data get entity @s Rotation[0]

execute as @e[type=marker,tag=mr.platform_preview_raycast] if score @s mr.link = @p mr.link run kill @s

execute positioned ~ ~ ~ anchored eyes run summon marker ~ ~ ~ {Tags:["mr.platform_preview_raycast","mr.new_preview_ray"]}
execute anchored eyes run tp @e[type=marker,tag=mr.new_preview_ray,limit=1,sort=nearest] ~ ~ ~ ~ ~

execute as @e[type=marker,tag=mr.new_preview_ray,limit=1,sort=nearest] run scoreboard players operation @s mr.link = @p mr.link
execute as @e[type=marker,tag=mr.new_preview_ray,limit=1,sort=nearest] run data modify entity @s data.platform_type set from storage mineraft:platform platform_type
execute as @e[type=marker,tag=mr.new_preview_ray,limit=1,sort=nearest] run scoreboard players operation @s mr.data = #player_rot mr.data

tag @e[type=marker,tag=mr.new_preview_ray] remove mr.new_preview_ray

scoreboard players set @e[type=marker,tag=mr.platform_preview_raycast,limit=1,sort=nearest] mr.raycast_dist 50

execute as @e[type=marker,tag=mr.platform_preview_raycast,limit=1,sort=nearest] at @s run function mineraft:structures/platform/raycast/preview/loop
execute unless entity @e[tag=mr.support] run say support gone --preview-sart