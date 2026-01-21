

execute if entity @s[tag=mr.skip_check] run return run tag @s remove mr.skip_check

execute positioned ~ ~-0.5 ~ unless block ~ ~ ~ barrier run function mineraft:structures/platform/check_supports