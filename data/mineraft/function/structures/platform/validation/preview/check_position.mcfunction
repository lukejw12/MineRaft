execute positioned ~ ~-1 ~ if entity @e[type=interaction,tag=mr.crop_plot_interaction,distance=..2.5] run return fail

execute positioned ~0.5 ~-3 ~0.5 as @e[type=item_display,tag=mr.surface,distance=..3,limit=1,sort=nearest] if data entity @s data.grid.height_blocked run return fail

scoreboard players set #has_capacity mr.data 0

execute positioned ~0.5 ~-3 ~0.5 as @e[type=item_display,tag=mr.surface,distance=..3,limit=1,sort=nearest] if data entity @s {data:{grid:{has_support:1b}}} run function mineraft:grid/support/has_capacity

execute if score #has_capacity mr.data matches 0 if entity @e[type=item_display,tag=mr.wall_display,tag=!mr.supporting_platform,distance=..4] run scoreboard players set #has_capacity mr.data 1

execute if score #has_capacity mr.data matches 0 run function mineraft:structures/support/validation/position/check_position_valid
execute if score #has_capacity mr.data matches 0 if score #position_valid mr.data matches 1 run function mineraft:structures/support/validation/position/has_capacity

execute if score #has_capacity mr.data matches 0 run return fail

scoreboard players set #preview_valid mr.data 1
execute as @e[type=item_display,tag=mr.platform_preview] if score @s mr.link = #player_link mr.data run tp @s ~ ~ ~
