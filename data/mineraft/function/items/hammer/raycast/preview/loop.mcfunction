tp @s ^ ^ ^0.1
scoreboard players remove @s mr.raycast_dist 1
execute if entity @e[type=item_display,tag=mr.smeltery_display,distance=..2,limit=1] run return run function mineraft:items/hammer/raycast/preview/hit {structure:"smeltery",tag:"mr.smeltery_display"}
execute if entity @e[type=item_display,tag=mr.purifier_display,distance=..2,limit=1] run return run function mineraft:items/hammer/raycast/preview/hit {structure:"purifier",tag:"mr.purifier_display"}
execute if entity @e[type=item_display,tag=mr.support_display,distance=..2,limit=1] run return run function mineraft:items/hammer/raycast/preview/hit {structure:"support",tag:"mr.support_display"}
execute if entity @e[type=item_display,tag=mr.stairs_display,distance=..2,limit=1] run return run function mineraft:items/hammer/raycast/preview/hit {structure:"stairs",tag:"mr.stairs_display"}
execute if entity @e[type=item_display,tag=mr.wall_display,distance=..2,limit=1] run return run function mineraft:items/hammer/raycast/preview/hit {structure:"wall",tag:"mr.wall_display"}
execute if entity @e[type=item_display,tag=mr.platform_display,distance=..2,limit=1] run return run function mineraft:items/hammer/raycast/preview/hit {structure:"platform",tag:"mr.platform_display"}
execute if entity @e[type=item_display,tag=mr.net_display,distance=..2,limit=1] run return run function mineraft:items/hammer/raycast/preview/hit {structure:"net",tag:"mr.net_display"}
execute if entity @e[type=item_display,tag=mr.foundation,distance=..2,tag=!mr.net_display,limit=1] run return run function mineraft:items/hammer/raycast/preview/hit {structure:"foundation",tag:"mr.foundation"}
execute if entity @e[type=item_display,tag=mr.crop_plot_display,distance=..2,limit=1] run return run function mineraft:items/hammer/raycast/preview/hit {structure:"crop_plot",tag:"mr.crop_plot_display"}

execute if score @s mr.raycast_dist matches ..0 run function mineraft:items/hammer/raycast/preview/miss
execute if score @s mr.raycast_dist matches ..0 run return run kill @s

execute positioned ^ ^ ^0.1 run function mineraft:items/hammer/raycast/preview/loop