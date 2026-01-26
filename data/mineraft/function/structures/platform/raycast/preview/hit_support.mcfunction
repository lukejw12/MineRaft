scoreboard players operation #player_link mr.data = @s mr.link

execute unless entity @e[type=item_display,tag=mr.support_display,distance=..2] run return run function mineraft:structures/platform/raycast/preview/miss

execute as @e[type=item_display,tag=mr.support_display,distance=..2,limit=1,sort=nearest] at @s align xyz positioned ~0.5 ~2.79 ~0.5 if entity @e[type=item_display,tag=mr.platform_display,distance=..0.5] run return run function mineraft:structures/platform/raycast/preview/hide

execute as @e[type=item_display,tag=mr.support_display,distance=..2,limit=1,sort=nearest] at @s align xyz run function mineraft:structures/support/validation/position/count_platforms
execute if score #platform_count mr.data matches 5.. run return run function mineraft:structures/platform/raycast/preview/hide

function mineraft:structures/platform/placement/models/get_model

execute as @a if score @s mr.link = #player_link mr.data unless entity @e[type=item_display,tag=mr.platform_preview] if score @s mr.link = #player_link mr.data run function mineraft:structures/platform/placement/spawn/preview with storage mineraft:platform

execute as @e[type=item_display,tag=mr.new_platform_preview,limit=1] run scoreboard players operation @s mr.link = #player_link mr.data
tag @e[type=item_display,tag=mr.new_platform_preview] remove mr.new_platform_preview

execute as @e[type=item_display,tag=mr.support_display,distance=..2,limit=1,sort=nearest] at @s align xyz as @e[type=item_display,tag=mr.platform_preview] if score @s mr.link = #player_link mr.data run tp @s ~0.5 ~2.71 ~0.5

kill @s