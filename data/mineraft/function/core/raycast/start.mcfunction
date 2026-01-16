execute as @e[type=item_display,tag=mr.new_display,limit=1] run scoreboard players operation @s mr.link = @p mr.link
tag @e[type=item_display,tag=mr.new_display] remove mr.new_display
execute positioned ~ ~ ~ anchored eyes run summon marker ~ ~ ~ {Tags:["mr.raycast","mr.new_ray"]}

execute anchored eyes run tp @e[type=marker,tag=mr.new_ray,limit=1,sort=nearest] ~ ~ ~ ~ ~

execute as @e[type=marker,tag=mr.new_ray,limit=1,sort=nearest] run scoreboard players operation @s mr.link = @p mr.link

$execute as @e[type=marker,tag=mr.new_ray,limit=1,sort=nearest] run data modify entity @s data.hit_function set value "$(function)"

tag @e[type=marker,tag=mr.new_ray] remove mr.new_ray

execute as @e[type=marker,tag=mr.raycast] if score @s mr.link = @p mr.link run scoreboard players set @s mr.raycast_dist 50
execute as @e[type=marker,tag=mr.raycast] if score @s mr.link = @p mr.link run scoreboard players set @s mr.prev_x 0
execute as @e[type=marker,tag=mr.raycast] if score @s mr.link = @p mr.link run scoreboard players set @s mr.prev_z 0

execute as @e[type=marker,tag=mr.raycast] if score @s mr.link = @p mr.link at @s run function mineraft:core/raycast/loop_start