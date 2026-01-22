
execute if entity @s[tag=mr.skip_check] run return run tag @s remove mr.skip_check

execute positioned ~ ~ ~ unless block ~ ~ ~ barrier run function mineraft:structures/platform/check_supports
execute unless entity @e[tag=mr.support] run say support gone --tick