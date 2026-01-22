
execute unless entity @e[type=item_display,tag=mr.platform_display,distance=..2] run tag @s remove mr.supporting_platform
execute unless entity @e[type=item_display,tag=mr.platform_display,distance=..2] run setblock ~ ~2 ~ iron_bars
execute unless entity @e[tag=mr.support] run say support gone --restore support toop