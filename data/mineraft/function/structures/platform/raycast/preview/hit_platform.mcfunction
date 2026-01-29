
scoreboard players operation #player_link mr.data = @s mr.link

data modify storage mineraft:platform platform_type set from entity @s data.platform_type

scoreboard players operation #rotation mr.data = @s mr.data

execute unless entity @e[type=item_display,tag=mr.platform_display,distance=..2] run return run function mineraft:structures/platform/raycast/preview/hide

function mineraft:structures/platform/placement/models/get_model

execute as @e[type=item_display,tag=mr.platform_preview] if score @s mr.link = #player_link mr.data store success score #type_changed mr.data run data modify entity @s data.preview_type set from storage mineraft:platform platform_type
execute if score #type_changed mr.data matches 1 as @e[type=item_display,tag=mr.platform_preview] if score @s mr.link = #player_link mr.data run kill @s

execute as @a if score @s mr.link = #player_link mr.data unless entity @e[type=item_display,tag=mr.platform_preview] if score @s mr.link = #player_link mr.data run function mineraft:structures/platform/placement/spawn/preview with storage mineraft:platform

execute as @e[type=item_display,tag=mr.new_platform_preview,limit=1] run scoreboard players operation @s mr.link = #player_link mr.data
execute as @e[type=item_display,tag=mr.new_platform_preview,limit=1] run data modify entity @s data.preview_type set from storage mineraft:platform platform_type
tag @e[type=item_display,tag=mr.new_platform_preview] remove mr.new_platform_preview

execute as @e[type=item_display,tag=mr.platform_display,distance=..2,limit=1,sort=nearest] at @s run function mineraft:structures/platform/placement/extension/preview_extend

kill @s