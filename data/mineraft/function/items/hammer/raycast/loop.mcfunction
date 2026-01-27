tp @s ^ ^ ^0.1
scoreboard players remove @s mr.raycast_dist 1

execute if entity @e[type=item_display,distance=..2,tag=mr.foundation,tag=!mr.net_display] run return run function mineraft:items/hammer/raycast/hit {structure:"foundation"}
execute if entity @e[type=item_display,distance=..2,tag=mr.platform_display] run return run function mineraft:items/hammer/raycast/hit {structure:"platform"}
execute if entity @e[type=item_display,distance=..2,tag=mr.wall_display] run return run function mineraft:items/hammer/raycast/hit {structure:"wall"}
execute if entity @e[type=item_display,distance=..2,tag=mr.smeltery_display] run return run function mineraft:items/hammer/raycast/hit {structure:"smeltery"}
execute if entity @e[type=item_display,distance=..2,tag=mr.purifier_display] run return run function mineraft:items/hammer/raycast/hit {structure:"purifier"}
execute if entity @e[type=item_display,distance=..2,tag=mr.net_display] run return run function mineraft:items/hammer/raycast/hit {structure:"net"}
execute if entity @e[type=item_display,distance=..2,tag=mr.support_display] run return run function mineraft:items/hammer/raycast/hit {structure:"support"}

execute if score @s mr.raycast_dist matches ..0 run return run kill @s
execute positioned ^ ^ ^0.1 run function mineraft:items/hammer/raycast/loop