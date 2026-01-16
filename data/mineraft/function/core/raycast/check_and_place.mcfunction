execute if entity @e[type=item_display,tag=mr.center,distance=..1] run return run execute as @e[type=item_display,tag=mr.display] if score @s mr.link = #player_link mr.data run tp @s ~ -500 ~

execute as @e[type=item_display,tag=mr.display] if score @s mr.link = #player_link mr.data run tp @s ~0.5 62 ~0.5