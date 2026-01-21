
execute if entity @s[tag=mr.placing_platform] run return fail
execute if entity @s[tag=mr.supporting_platform] run return fail

execute unless block ~ ~-0.21 ~ iron_bars run function mineraft:structures/support/destroy
execute unless block ~ ~0.79 ~ iron_bars run function mineraft:structures/support/destroy

execute positioned ~ ~-1 ~ unless block ~ ~ ~ barrier unless block ~ ~ ~ iron_bars unless entity @e[type=item_display,tag=mr.platform_display,distance=..2] run function mineraft:structures/support/destroy