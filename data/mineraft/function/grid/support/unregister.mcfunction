execute at @s as @e[type=item_display,tag=mr.surface,distance=..10,limit=1,sort=nearest] run data modify entity @s data.grid.has_support set value 0b
execute at @s as @e[type=item_display,tag=mr.surface,distance=..10,limit=1,sort=nearest] run data remove entity @s data.grid.support_max
execute at @s as @e[type=item_display,tag=mr.surface,distance=..10,limit=1,sort=nearest] run data modify entity @s data.grid.platform_count set value 0
