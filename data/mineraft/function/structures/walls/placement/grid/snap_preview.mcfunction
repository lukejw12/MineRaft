execute if data storage mineraft:walls {side:"north"} as @e[type=item_display,tag=mr.surface,distance=..3,limit=1,sort=nearest] if data entity @s data.grid.edge_n run return run execute as @e[type=item_display,tag=mr.wall_preview] if score @s mr.link = #player_link mr.data run function mineraft:structures/walls/raycast/preview/hide
execute if data storage mineraft:walls {side:"south"} as @e[type=item_display,tag=mr.surface,distance=..3,limit=1,sort=nearest] if data entity @s data.grid.edge_s run return run execute as @e[type=item_display,tag=mr.wall_preview] if score @s mr.link = #player_link mr.data run function mineraft:structures/walls/raycast/preview/hide
execute if data storage mineraft:walls {side:"east"} as @e[type=item_display,tag=mr.surface,distance=..3,limit=1,sort=nearest] if data entity @s data.grid.edge_e run return run execute as @e[type=item_display,tag=mr.wall_preview] if score @s mr.link = #player_link mr.data run function mineraft:structures/walls/raycast/preview/hide
execute if data storage mineraft:walls {side:"west"} as @e[type=item_display,tag=mr.surface,distance=..3,limit=1,sort=nearest] if data entity @s data.grid.edge_w run return run execute as @e[type=item_display,tag=mr.wall_preview] if score @s mr.link = #player_link mr.data run function mineraft:structures/walls/raycast/preview/hide

execute if data storage mineraft:walls {side:"north"} positioned ~ ~ ~-1 as @e[type=item_display,tag=mr.wall_preview] align xyz if score @s mr.link = #player_link mr.data run tp @s ~0.5 ~.51 ~0.5
execute if data storage mineraft:walls {side:"north"} positioned ~ ~ ~-1 as @e[type=item_display,tag=mr.wall_preview] align xyz if score @s mr.link = #player_link mr.data run data merge entity @s {transformation:{translation:[0f,2f,1f]}}

execute if data storage mineraft:walls {side:"south"} positioned ~ ~ ~1 as @e[type=item_display,tag=mr.wall_preview] align xyz if score @s mr.link = #player_link mr.data run tp @s ~0.5 ~.51 ~0.5
execute if data storage mineraft:walls {side:"south"} positioned ~ ~ ~1 as @e[type=item_display,tag=mr.wall_preview] align xyz if score @s mr.link = #player_link mr.data run data merge entity @s {transformation:{translation:[0f,2f,-1f]}}

execute if data storage mineraft:walls {side:"east"} positioned ~1 ~ ~ as @e[type=item_display,tag=mr.wall_preview] align xyz if score @s mr.link = #player_link mr.data run tp @s ~0.5 ~.51 ~0.5
execute if data storage mineraft:walls {side:"east"} positioned ~1 ~ ~ as @e[type=item_display,tag=mr.wall_preview] align xyz if score @s mr.link = #player_link mr.data run data merge entity @s {transformation:{translation:[-1f,2f,0f]}}

execute if data storage mineraft:walls {side:"west"} positioned ~-1 ~ ~ as @e[type=item_display,tag=mr.wall_preview] align xyz if score @s mr.link = #player_link mr.data run tp @s ~0.5 ~.51 ~0.5
execute if data storage mineraft:walls {side:"west"} positioned ~-1 ~ ~ as @e[type=item_display,tag=mr.wall_preview] align xyz if score @s mr.link = #player_link mr.data run data merge entity @s {transformation:{translation:[1f,2f,0f]}}

execute as @e[type=item_display,tag=mr.wall_preview] if score @s mr.link = #player_link mr.data run function mineraft:structures/walls/raycast/preview/apply_rotation with storage mineraft:walls
