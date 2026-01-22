scoreboard players set #preview_valid mr.data 0

execute if score #rotation mr.data matches -45..45 positioned ~ ~ ~3 unless entity @e[type=item_display,tag=mr.platform_display,distance=..2] run scoreboard players set #preview_valid mr.data 1
execute if score #rotation mr.data matches -45..45 if score #preview_valid mr.data matches 1 positioned ~ ~ ~3 as @e[type=item_display,tag=mr.platform_preview] if score @s mr.link = #player_link mr.data run tp @s ~ ~ ~

execute if score #rotation mr.data matches 45..135 positioned ~-3 ~ ~ unless entity @e[type=item_display,tag=mr.platform_display,distance=..2] run scoreboard players set #preview_valid mr.data 1
execute if score #rotation mr.data matches 45..135 if score #preview_valid mr.data matches 1 positioned ~-3 ~ ~ as @e[type=item_display,tag=mr.platform_preview] if score @s mr.link = #player_link mr.data run tp @s ~ ~ ~

execute if score #rotation mr.data matches 135.. positioned ~ ~ ~-3 unless entity @e[type=item_display,tag=mr.platform_display,distance=..2] run scoreboard players set #preview_valid mr.data 1
execute if score #rotation mr.data matches 135.. if score #preview_valid mr.data matches 1 positioned ~ ~ ~-3 as @e[type=item_display,tag=mr.platform_preview] if score @s mr.link = #player_link mr.data run tp @s ~ ~ ~

execute if score #rotation mr.data matches ..-135 positioned ~ ~ ~-3 unless entity @e[type=item_display,tag=mr.platform_display,distance=..2] run scoreboard players set #preview_valid mr.data 1
execute if score #rotation mr.data matches ..-135 if score #preview_valid mr.data matches 1 positioned ~ ~ ~-3 as @e[type=item_display,tag=mr.platform_preview] if score @s mr.link = #player_link mr.data run tp @s ~ ~ ~

execute if score #rotation mr.data matches -135..-45 positioned ~3 ~ ~ unless entity @e[type=item_display,tag=mr.platform_display,distance=..2] run scoreboard players set #preview_valid mr.data 1
execute if score #rotation mr.data matches -135..-45 if score #preview_valid mr.data matches 1 positioned ~3 ~ ~ as @e[type=item_display,tag=mr.platform_preview] if score @s mr.link = #player_link mr.data run tp @s ~ ~ ~

execute if score #preview_valid mr.data matches 0 as @e[type=item_display,tag=mr.platform_preview] if score @s mr.link = #player_link mr.data run kill @s