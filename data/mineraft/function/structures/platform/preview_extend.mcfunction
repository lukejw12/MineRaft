execute if score #rotation mr.data matches -45..45 positioned ~ ~ ~3 as @e[type=item_display,tag=mr.platform_preview] if score @s mr.link = #player_link mr.data run tp @s ~ ~ ~
execute if score #rotation mr.data matches 45..135 positioned ~-3 ~ ~ as @e[type=item_display,tag=mr.platform_preview] if score @s mr.link = #player_link mr.data run tp @s ~ ~ ~
execute if score #rotation mr.data matches 135.. positioned ~ ~ ~-3 as @e[type=item_display,tag=mr.platform_preview] if score @s mr.link = #player_link mr.data run tp @s ~ ~ ~
execute if score #rotation mr.data matches ..-135 positioned ~ ~ ~-3 as @e[type=item_display,tag=mr.platform_preview] if score @s mr.link = #player_link mr.data run tp @s ~ ~ ~
execute if score #rotation mr.data matches -135..-45 positioned ~3 ~ ~ as @e[type=item_display,tag=mr.platform_preview] if score @s mr.link = #player_link mr.data run tp @s ~ ~ ~
execute unless entity @e[tag=mr.support] run say support gone --prreview extend