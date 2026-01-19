execute positioned ~ ~ ~ anchored eyes run summon marker ~ ~ ~ {Tags:["mr.wall_raycast","mr.new_ray"]}
execute anchored eyes run tp @e[type=marker,tag=mr.new_ray,limit=1,sort=nearest] ~ ~ ~ ~ ~

execute as @e[type=marker,tag=mr.new_ray,limit=1,sort=nearest] run scoreboard players operation @s mr.link = @p mr.link
execute as @e[type=marker,tag=mr.new_ray,limit=1,sort=nearest] run data modify entity @s data.wall_type set from storage mineraft:walls wall_type
execute as @e[type=marker,tag=mr.new_ray,limit=1,sort=nearest] run scoreboard players operation @s mr.data = #player_rot mr.data

tag @e[type=marker,tag=mr.new_ray] remove mr.new_ray

scoreboard players set @e[type=marker,tag=mr.wall_raycast,limit=1,sort=nearest] mr.raycast_dist 50

execute as @e[type=marker,tag=mr.wall_raycast,limit=1,sort=nearest] at @s run function mineraft:structures/walls/raycast/loop