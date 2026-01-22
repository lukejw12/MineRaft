
scoreboard players operation #player_link mr.data = @s mr.link

data modify storage mineraft:platform platform_type set from entity @s data.platform_type

execute unless entity @e[type=item_display,tag=mr.support_display,distance=..2] run kill @s
execute unless entity @e[type=item_display,tag=mr.support_display,distance=..2] run return fail

execute as @e[type=item_display,tag=mr.support_display,distance=..2,limit=1,sort=nearest] at @s positioned ~-1 ~2.79 ~-1 if entity @e[type=item_display,tag=mr.platform_display,distance=..2] run kill @e[type=marker,tag=mr.platform_raycast,limit=1,sort=nearest]
execute as @e[type=item_display,tag=mr.support_display,distance=..2,limit=1,sort=nearest] at @s positioned ~-1 ~2.79 ~-1 if entity @e[type=item_display,tag=mr.platform_display,distance=..2] run return fail

execute as @e[type=item_display,tag=mr.support_display,distance=..2,limit=1,sort=nearest] at @s positioned ~ ~2 ~ run function mineraft:structures/platform/spawn_on_support

tellraw @a ["§e[AFTER SPAWN_ON_SUPPORT CALL] Checking support..."]
execute as @e[type=item_display,tag=mr.support_display] run tellraw @a ["§aSupport ",{"score":{"name":"@s","objective":"mr.support_id"}}," exists after spawn call"]

execute as @a if score @s mr.link = #player_link mr.data run clear @s *[custom_data~{mr.platform:1b}] 1

kill @s

execute unless entity @e[tag=mr.support] run say support gone --hit_support
