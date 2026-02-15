tp @s ^ ^ ^0.1
scoreboard players remove @s mr.raycast_dist 1
execute if entity @e[type=item_display,tag=mr.foundation,tag=!mr.armored,distance=..2,limit=1] run return run function mineraft:items/foundation_armor/raycast/preview/hit
execute if score @s mr.raycast_dist matches ..0 run return run function mineraft:items/foundation_armor/raycast/preview/miss
execute positioned ^ ^ ^0.1 run function mineraft:items/foundation_armor/raycast/preview/loop