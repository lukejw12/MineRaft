scoreboard players operation #player_link mr.data = @s mr.link

data modify storage mineraft:platform platform_type set from entity @s data.platform_type

scoreboard players operation #rotation mr.data = @s mr.data

execute unless entity @e[type=item_display,tag=mr.platform_display,distance=..2] run return run function mineraft:structures/platform/raycast/preview/hide

say preview hit_platform

execute store result storage mineraft:debug support_value int 1 as @e[type=item_display,tag=mr.platform_display,distance=..2,limit=1,sort=nearest] run scoreboard players get @s mr.support_value
function mineraft:structures/platform/debug_support_value with storage mineraft:debug

execute as @e[type=item_display,tag=mr.platform_display,distance=..2,limit=1,sort=nearest] if score @s mr.support_value matches 0 at @s run function mineraft:structures/platform/preview_check_can_extend

execute as @e[type=item_display,tag=mr.platform_display,distance=..2,limit=1,sort=nearest] if score @s mr.support_value matches 0 if score #can_extend mr.data matches 0 run say Preview: support full
execute as @e[type=item_display,tag=mr.platform_display,distance=..2,limit=1,sort=nearest] if score @s mr.support_value matches 0 if score #can_extend mr.data matches 0 run return run function mineraft:structures/platform/raycast/preview/hide

execute as @e[type=item_display,tag=mr.platform_display,distance=..2,limit=1,sort=nearest] unless score @s mr.support_value matches 0 run say Preview: extended platform, checking for nearby support

execute as @a if score @s mr.link = #player_link mr.data unless entity @e[type=item_display,tag=mr.platform_preview] if score @s mr.link = #player_link mr.data run function mineraft:structures/platform/spawn_preview

execute as @e[type=item_display,tag=mr.new_platform_preview,limit=1] run scoreboard players operation @s mr.link = #player_link mr.data
tag @e[type=item_display,tag=mr.new_platform_preview] remove mr.new_platform_preview

execute as @e[type=item_display,tag=mr.platform_display,distance=..2,limit=1,sort=nearest] at @s run function mineraft:structures/platform/preview_extend

kill @s