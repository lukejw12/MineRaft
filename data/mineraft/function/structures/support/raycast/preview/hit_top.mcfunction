
scoreboard players operation #player_link mr.data = @s mr.link

execute as @e[type=item_display,tag=mr.support_display,distance=..2,limit=1,sort=nearest] at @s align xyz positioned ~0.5 ~3 ~0.5 if entity @e[type=item_display,tag=mr.support_display,distance=..0.5] run return run function mineraft:structures/support/raycast/preview/hide

function mineraft:structures/support/placement/models/get

execute as @e[type=item_display,tag=mr.support_preview] if score @s mr.link = #player_link mr.data store success score #type_changed mr.data run data modify entity @s data.preview_type set from storage mineraft:support support_type
execute if score #type_changed mr.data matches 1 as @e[type=item_display,tag=mr.support_preview] if score @s mr.link = #player_link mr.data run kill @s

execute as @a if score @s mr.link = #player_link mr.data unless entity @e[type=item_display,tag=mr.support_preview] if score @s mr.link = #player_link mr.data run function mineraft:structures/support/placement/spawn/preview with storage mineraft:support

execute as @e[type=item_display,tag=mr.new_support_preview,limit=1] run scoreboard players operation @s mr.link = #player_link mr.data
execute as @e[type=item_display,tag=mr.new_support_preview,limit=1] run data modify entity @s data.preview_type set from storage mineraft:support support_type
tag @e[type=item_display,tag=mr.new_support_preview] remove mr.new_support_preview

execute as @e[type=item_display,tag=mr.support_display,distance=..2,limit=1,sort=nearest] at @s align xyz as @e[type=item_display,tag=mr.support_preview] if score @s mr.link = #player_link mr.data run tp @s ~0.5 ~3.21 ~0.5

kill @s