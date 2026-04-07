scoreboard players operation #player_link mr.data = @s mr.link

data modify storage mineraft:platform platform_type set from entity @s data.platform_type

execute unless entity @e[type=item_display,tag=mr.support_display,distance=..2.5] run kill @s
execute unless entity @e[type=item_display,tag=mr.support_display,distance=..2.5] run return fail

execute as @e[type=item_display,tag=mr.support_display,distance=..2.5,limit=1,sort=nearest] at @s align xyz positioned ~0.5 ~2.79 ~0.5 if entity @e[type=item_display,tag=mr.platform_display,distance=..0.5] run kill @e[type=marker,tag=mr.platform_raycast,limit=1,sort=nearest]
execute as @e[type=item_display,tag=mr.support_display,distance=..2.5,limit=1,sort=nearest] at @s align xyz positioned ~0.5 ~2.79 ~0.5 if entity @e[type=item_display,tag=mr.platform_display,distance=..0.5] run return fail


scoreboard players set #has_capacity mr.data 0
execute as @e[type=item_display,tag=mr.support_display,distance=..2.5,limit=1,sort=nearest] at @s positioned ~0.5 ~ ~0.5 as @e[type=item_display,tag=mr.surface,distance=..10,limit=1,sort=nearest] run function mineraft:grid/support/has_capacity
execute if score #has_capacity mr.data matches 0 run kill @e[type=marker,tag=mr.platform_raycast,limit=1,sort=nearest]
execute if score #has_capacity mr.data matches 0 run return fail

execute as @e[type=item_display,tag=mr.support_display,distance=..2.5,limit=1,sort=nearest] at @s align xyz positioned ~0.5 ~2 ~0.5 run function mineraft:structures/platform/placement/spawn/on_support

kill @s
