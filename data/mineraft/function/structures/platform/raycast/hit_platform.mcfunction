scoreboard players operation #player_link mr.data = @s mr.link

data modify storage mineraft:platform platform_type set from entity @s data.platform_type

scoreboard players operation #rotation mr.data = @s mr.data

say hit_platform called
execute as @e[type=item_display,tag=mr.platform_display,distance=..2,limit=1,sort=nearest] at @s run say Found platform, checking from platform position

execute store result storage mineraft:debug support_value int 1 as @e[type=item_display,tag=mr.platform_display,distance=..2,limit=1,sort=nearest] run scoreboard players get @s mr.support_value
function mineraft:structures/platform/debug_support_value with storage mineraft:debug

execute as @e[type=item_display,tag=mr.platform_display,distance=..2,limit=1,sort=nearest] if score @s mr.support_value matches 0 run say Platform is on support, checking if support can extend
execute as @e[type=item_display,tag=mr.platform_display,distance=..2,limit=1,sort=nearest] if score @s mr.support_value matches 0 at @s run function mineraft:structures/platform/check_can_extend

execute as @e[type=item_display,tag=mr.platform_display,distance=..2,limit=1,sort=nearest] if score @s mr.support_value matches 0 if score #can_extend mr.data matches 0 run say Cannot extend - support full
execute as @e[type=item_display,tag=mr.platform_display,distance=..2,limit=1,sort=nearest] if score @s mr.support_value matches 0 if score #can_extend mr.data matches 0 run kill @e[type=marker,tag=mr.platform_raycast,limit=1,sort=nearest]
execute as @e[type=item_display,tag=mr.platform_display,distance=..2,limit=1,sort=nearest] if score @s mr.support_value matches 0 if score #can_extend mr.data matches 0 run return fail

execute as @e[type=item_display,tag=mr.platform_display,distance=..2,limit=1,sort=nearest] unless score @s mr.support_value matches 0 run say Platform is extended, will check for nearby support in spawn_extended

execute as @e[type=item_display,tag=mr.platform_display,distance=..2,limit=1,sort=nearest] at @s run function mineraft:structures/platform/try_extend

execute as @a if score @s mr.link = #player_link mr.data run clear @s *[custom_data~{mr.platform:1b}] 1

kill @e[type=marker,tag=mr.platform_raycast,limit=1,sort=nearest]