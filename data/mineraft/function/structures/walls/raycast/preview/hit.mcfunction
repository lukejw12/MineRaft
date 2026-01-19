scoreboard players operation #player_link mr.data = @s mr.link

data modify storage mineraft:walls wall_type set from entity @s data.wall_type
scoreboard players operation #rotation mr.data = @s mr.data
function mineraft:structures/walls/calculate_rotation

execute align xyz if entity @e[type=item_display,tag=mr.wall_display,dx=0,dy=0,dz=0] run return run function mineraft:structures/walls/raycast/preview/hide

execute as @a if score @s mr.link = #player_link mr.data unless entity @e[type=item_display,tag=mr.wall_preview] if score @s mr.link = #player_link mr.data run function mineraft:structures/walls/spawn_preview with storage mineraft:walls

execute as @e[type=item_display,tag=mr.new_wall_preview,limit=1] run scoreboard players operation @s mr.link = #player_link mr.data
tag @e[type=item_display,tag=mr.new_wall_preview] remove mr.new_wall_preview

execute align xyz as @e[type=item_display,tag=mr.wall_preview] if score @s mr.link = #player_link mr.data run tp @s ~0.5 ~0.5 ~0.5
execute align xyz as @e[type=item_display,tag=mr.wall_preview] if score @s mr.link = #player_link mr.data run function mineraft:structures/walls/raycast/preview/apply_rotation with storage mineraft:walls

kill @s