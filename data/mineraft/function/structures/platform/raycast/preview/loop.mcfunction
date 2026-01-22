tp @s ^ ^ ^0.1
scoreboard players remove @s mr.raycast_dist 1

execute if block ~ ~ ~ iron_bars run return run function mineraft:structures/platform/raycast/preview/hit_support
execute if block ~ ~ ~ barrier if entity @e[type=item_display,tag=mr.platform_display,distance=..2] run return run function mineraft:structures/platform/raycast/preview/hit_platform

execute if score @s mr.raycast_dist matches ..0 run function mineraft:structures/platform/raycast/preview/miss
execute if score @s mr.raycast_dist matches ..0 run return run kill @s

execute positioned ^ ^ ^0.1 run function mineraft:structures/platform/raycast/preview/loop
execute unless entity @e[tag=mr.support] run say support gone --preview-lloop