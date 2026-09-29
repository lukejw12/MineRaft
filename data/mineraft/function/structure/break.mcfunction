execute unless entity @s[tag=mr.root] run return fail
execute if entity @s[tag=mr.breaking] run return fail
tag @s add mr.cascade
function mineraft:structure/break/drain
tag @a[tag=mr.breaker] remove mr.breaker
execute if score #sp.sailing sp.data matches 1 run function mineraft:sail/adopt
