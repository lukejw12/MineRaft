scoreboard players operation #player_link mr.data = @s mr.link

data modify storage mineraft:smeltery preview_type set from entity @s data.smeltery_type
scoreboard players operation #rotation mr.data = @s mr.data
function mineraft:structures/smeltery/calculate_rotation

execute align xyz positioned ~ ~1 ~ if entity @e[type=item_display,tag=mr.smeltery,dx=0,dy=0,dz=0] run return run function mineraft:structures/smeltery/raycast/preview/hide

execute as @a if score @s mr.link = #player_link mr.data unless entity @e[type=item_display,tag=mr.smeltery_preview] if score @s mr.link = #player_link mr.data run function mineraft:structures/smeltery/spawn_preview with storage mineraft:smeltery

execute as @e[type=item_display,tag=mr.new_smeltery_preview,limit=1] run scoreboard players operation @s mr.link = #player_link mr.data
tag @e[type=item_display,tag=mr.new_smeltery_preview] remove mr.new_smeltery_preview

execute align xyz positioned ~ ~1 ~ as @e[type=item_display,tag=mr.smeltery_preview] if score @s mr.link = #player_link mr.data run tp @s ~0.5 ~0.5 ~0.5
execute align xyz positioned ~ ~1 ~ as @e[type=item_display,tag=mr.smeltery_preview] if score @s mr.link = #player_link mr.data run function mineraft:structures/smeltery/raycast/preview/apply_rotation with storage mineraft:smeltery

kill @s