execute as @e[type=item_display,tag=mr.platform_preview] if score @s mr.link = #player_link mr.data run kill @s
execute unless entity @e[tag=mr.support] run say support gone --preview-hide