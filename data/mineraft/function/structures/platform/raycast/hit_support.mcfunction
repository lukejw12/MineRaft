scoreboard players operation #player_link mr.data = @s mr.link

data modify storage mineraft:platform platform_type set from entity @s data.platform_type

execute unless entity @e[type=item_display,tag=mr.support_display,distance=..2.5] run kill @s
execute unless entity @e[type=item_display,tag=mr.support_display,distance=..2.5] run return fail

execute as @e[type=item_display,tag=mr.support_display,distance=..2.5,limit=1,sort=nearest] at @s align xyz positioned ~0.5 ~2.79 ~0.5 if entity @e[type=item_display,tag=mr.platform_display,distance=..0.5] run kill @e[type=marker,tag=mr.platform_raycast,limit=1,sort=nearest]
execute as @e[type=item_display,tag=mr.support_display,distance=..2.5,limit=1,sort=nearest] at @s align xyz positioned ~0.5 ~2.79 ~0.5 if entity @e[type=item_display,tag=mr.platform_display,distance=..0.5] run return fail

execute as @e[type=item_display,tag=mr.support_display,distance=..2.5,limit=1,sort=nearest] at @s align xyz run function mineraft:structures/support/validation/position/count_platforms
execute if score #platform_count mr.data matches 5.. run kill @e[type=marker,tag=mr.platform_raycast,limit=1,sort=nearest]
execute if score #platform_count mr.data matches 5.. run return fail

execute as @e[type=item_display,tag=mr.support_display,distance=..2.5,limit=1,sort=nearest] at @s align xyz positioned ~0.5 ~2 ~0.5 run function mineraft:structures/platform/placement/spawn/on_support

execute as @a if score @s mr.link = #player_link mr.data run clear @s *[custom_data~{mr.platform:1b}] 1

kill @s