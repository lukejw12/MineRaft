execute if entity @s[tag=mr.skip_check] run return run tag @s remove mr.skip_check

execute unless block ~ ~ ~ barrier unless block ~ ~ ~ iron_bars run function mineraft:structures/platform/check_supports