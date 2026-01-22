scoreboard players operation #player_link mr.data = @s mr.link

scoreboard players operation #rotation mr.data = @s mr.data

execute as @e[type=item_display,tag=mr.platform_display,distance=..2,limit=1,sort=nearest] unless score @s mr.support_value matches 0 run return run function mineraft:structures/platform/raycast/preview/hide

execute as @e[type=item_display,tag=mr.platform_display,distance=..2,limit=1,sort=nearest] at @s run function mineraft:structures/platform/preview_check_can_extend

execute if score #can_extend mr.data matches 0 run return run function mineraft:structures/platform/raycast/preview/hide

execute as @a if score @s mr.link = #player_link mr.data unless entity @e[type=item_display,tag=mr.platform_preview] if score @s mr.link = #player_link mr.data run function mineraft:structures/platform/spawn_preview

execute as @e[type=item_display,tag=mr.new_platform_preview,limit=1] run scoreboard players operation @s mr.link = #player_link mr.data
tag @e[type=item_display,tag=mr.new_platform_preview] remove mr.new_platform_preview

execute as @e[type=item_display,tag=mr.platform_display,distance=..2,limit=1,sort=nearest] at @s run function mineraft:structures/platform/preview_extend

kill @s