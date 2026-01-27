tp @s ^ ^ ^0.1
scoreboard players remove @s mr.raycast_dist 1

execute if entity @e[type=item_display,distance=..2,tag=mr.foundation,tag=!mr.net_display] run return run function mineraft:items/hammer/raycast/preview/hit {structure:"foundation",tag:"mr.foundation"}
execute if entity @e[type=item_display,distance=..2,tag=mr.platform_display] run return run function mineraft:items/hammer/raycast/preview/hit {structure:"platform",tag:"mr.platform_display"}
execute if entity @e[type=item_display,distance=..2,tag=mr.wall_display] run return run function mineraft:items/hammer/raycast/preview/hit {structure:"wall",tag:"mr.wall_display"}
execute if entity @e[type=item_display,distance=..2,tag=mr.smeltery_display] run return run function mineraft:items/hammer/raycast/preview/hit {structure:"smeltery",tag:"mr.smeltery_display"}
execute if entity @e[type=item_display,distance=..2,tag=mr.purifier_display] run return run function mineraft:items/hammer/raycast/preview/hit {structure:"purifier",tag:"mr.purifier_display"}
execute if entity @e[type=item_display,distance=..2,tag=mr.net_display] run return run function mineraft:items/hammer/raycast/preview/hit {structure:"net",tag:"mr.net_display"}
execute if entity @e[type=item_display,distance=..2,tag=mr.support_display] run return run function mineraft:items/hammer/raycast/preview/hit {structure:"support",tag:"mr.support_display"}

execute if score @s mr.raycast_dist matches ..0 run function mineraft:items/hammer/raycast/preview/miss
execute if score @s mr.raycast_dist matches ..0 run return run kill @s

execute positioned ^ ^ ^0.1 run function mineraft:items/hammer/raycast/preview/loop
