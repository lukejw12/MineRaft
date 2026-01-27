execute positioned ~ ~ ~ anchored eyes run summon marker ~ ~ ~ {Tags:["mr.hammer_preview_raycast","mr.new_hammer_preview_ray"]}
execute anchored eyes run tp @e[type=marker,tag=mr.new_hammer_preview_ray,limit=1,sort=nearest] ~ ~ ~ ~ ~

execute as @e[type=marker,tag=mr.new_hammer_preview_ray,limit=1,sort=nearest] run scoreboard players operation @s mr.link = @p mr.link

tag @e[type=marker,tag=mr.new_hammer_preview_ray] remove mr.new_hammer_preview_ray

scoreboard players set @e[type=marker,tag=mr.hammer_preview_raycast,limit=1,sort=nearest] mr.raycast_dist 50

execute as @e[type=marker,tag=mr.hammer_preview_raycast,limit=1,sort=nearest] at @s run function mineraft:items/hammer/raycast/preview/loop