scoreboard players operation #player_link mr.data = @s mr.link

data modify storage mineraft:walls wall_type set from entity @s data.wall_type
scoreboard players operation #rotation mr.data = @s mr.data
function mineraft:structures/walls/placement/models/calculate_rotation

execute unless entity @e[type=item_display,tag=mr.foundation,distance=..2] unless entity @e[type=item_display,tag=mr.platform_display,distance=..2] run return run function mineraft:structures/walls/raycast/preview/hide

execute as @a if score @s mr.link = #player_link mr.data unless entity @e[type=item_display,tag=mr.wall_preview] if score @s mr.link = #player_link mr.data run function mineraft:structures/walls/placement/spawn/preview with storage mineraft:walls

execute as @e[type=item_display,tag=mr.new_wall_preview,limit=1] run scoreboard players operation @s mr.link = #player_link mr.data
tag @e[type=item_display,tag=mr.new_wall_preview] remove mr.new_wall_preview

execute as @e[type=item_display,tag=mr.foundation,distance=..2,limit=1,sort=nearest] at @s align xyz run function mineraft:structures/walls/placement/grid/snap_preview
execute as @e[type=item_display,tag=mr.platform_display,distance=..2,limit=1,sort=nearest] at @s align xyz run function mineraft:structures/walls/placement/grid/snap_preview

kill @s