scoreboard players operation #player_link mr.data = @s mr.link

data modify storage mineraft:support support_type set from entity @s data.support_type

execute as @e[type=item_display,tag=mr.center,distance=..2,limit=1,sort=nearest] at @s positioned ~0.5 ~1 ~0.5 if entity @e[type=item_display,tag=mr.support_display,distance=..0.5] run kill @e[type=marker,tag=mr.support_raycast,limit=1,sort=nearest]
execute as @e[type=item_display,tag=mr.center,distance=..2,limit=1,sort=nearest] at @s positioned ~0.5 ~1 ~0.5 if entity @e[type=item_display,tag=mr.support_display,distance=..0.5] run return fail

execute as @e[type=item_display,tag=mr.platform_display,distance=..2,limit=1,sort=nearest] at @s positioned ~ ~0.5 ~ if entity @e[type=item_display,tag=mr.support_display,distance=..0.5] run kill @e[type=marker,tag=mr.support_raycast,limit=1,sort=nearest]
execute as @e[type=item_display,tag=mr.platform_display,distance=..2,limit=1,sort=nearest] at @s positioned ~ ~0.5 ~ if entity @e[type=item_display,tag=mr.support_display,distance=..0.5] run return fail

execute as @e[type=item_display,tag=mr.center,distance=..2,limit=1,sort=nearest] at @s align xyz positioned ~0.5 ~1 ~0.5 run function mineraft:structures/support/spawn
execute unless entity @e[type=item_display,tag=mr.center,distance=..2] as @e[type=item_display,tag=mr.platform_display,distance=..2,limit=1,sort=nearest] at @s positioned ~ ~0.5 ~ run function mineraft:structures/support/spawn
kill @s