execute if data storage mineraft:walls {side:"north"} positioned ~ ~ ~-1 as @e[type=item_display,tag=mr.wall_preview] if score @s mr.link = #player_link mr.data run tp @s ~0.5 ~.71 ~0.5
execute if data storage mineraft:walls {side:"south"} positioned ~ ~ ~1 as @e[type=item_display,tag=mr.wall_preview] if score @s mr.link = #player_link mr.data run tp @s ~0.5 ~.71 ~0.5
execute if data storage mineraft:walls {side:"east"} positioned ~1 ~ ~ as @e[type=item_display,tag=mr.wall_preview] if score @s mr.link = #player_link mr.data run tp @s ~0.5 ~.71 ~0.5
execute if data storage mineraft:walls {side:"west"} positioned ~-1 ~ ~ as @e[type=item_display,tag=mr.wall_preview] if score @s mr.link = #player_link mr.data run tp @s ~0.5 ~.71 ~0.5

execute as @e[type=item_display,tag=mr.wall_preview] if score @s mr.link = #player_link mr.data run function mineraft:structures/walls/raycast/preview/apply_rotation with storage mineraft:walls


