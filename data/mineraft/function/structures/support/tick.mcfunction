execute if entity @s[tag=mr.supporting_platform] run return fail
say test
execute unless block ~ ~-0.21 ~ iron_bars run tellraw @a ["§c[DEBUG] support tick: iron_bars check failed at ~ ~-0.21 ~"]
execute unless block ~ ~-0.21 ~ iron_bars run function mineraft:structures/support/destroy

execute positioned ~ ~-1 ~ unless block ~ ~ ~ barrier unless block ~ ~ ~ iron_bars unless entity @e[type=item_display,tag=mr.platform_display,distance=..2] run tellraw @a ["§c[DEBUG] support tick: base check failed"]
execute positioned ~ ~-1 ~ unless block ~ ~ ~ barrier unless block ~ ~ ~ iron_bars unless entity @e[type=item_display,tag=mr.platform_display,distance=..2] run function mineraft:structures/support/destroy