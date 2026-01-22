execute unless block ~ ~ ~ iron_bars run function mineraft:structures/support/destroy
execute unless block ~ ~1 ~ iron_bars run function mineraft:structures/support/destroy

execute positioned ~ ~-1 ~ unless block ~ ~ ~ barrier unless block ~ ~ ~ iron_bars unless entity @e[type=item_display,tag=mr.platform_display,distance=..2] run function mineraft:structures/support/destroy
execute unless entity @e[tag=mr.support] run say support gone --support-tick