tp @s ^ ^ ^0.1
scoreboard players remove @s mr.raycast_dist 1
execute if entity @e[type=item_display,tag=mr.smeltery_display,distance=..2,limit=1] run return run function mineraft:items/hammer/destroy/smeltery
execute if entity @e[type=item_display,tag=mr.purifier_display,distance=..2,limit=1] run return run function mineraft:items/hammer/destroy/purifier
execute if entity @e[type=item_display,tag=mr.support_display,distance=..2,limit=1] run return run function mineraft:items/hammer/destroy/support
execute if entity @e[type=item_display,tag=mr.stairs_display,distance=..2,limit=1] run return run function mineraft:items/hammer/destroy/stairs
execute if entity @e[type=item_display,tag=mr.wall_display,distance=..2,limit=1] run return run function mineraft:items/hammer/destroy/wall
execute if entity @e[type=item_display,tag=mr.foundation,distance=..2,tag=!mr.net_display,limit=1] run return run function mineraft:items/hammer/destroy/foundation
execute if entity @e[type=item_display,tag=mr.net_display,distance=..2,limit=1] run return run function mineraft:items/hammer/destroy/net
execute if entity @e[type=item_display,tag=mr.platform_display,distance=..2,limit=1] run return run function mineraft:items/hammer/destroy/platform

execute if score @s mr.raycast_dist matches ..0 run return run kill @s
execute positioned ^ ^ ^0.1 run function mineraft:items/hammer/raycast/loop