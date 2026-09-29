execute if entity @s[tag=mr.t.platform] run function mineraft:structure/platform/support_here
execute if entity @s[tag=mr.t.platform] if score #sup mr.data matches 1 run return run tag @s remove mr.falling
tag @s remove mr.falling
scoreboard players operation #fall.by mr.data = @s mr.by
execute if score #fall.by mr.data matches 1.. as @a if score @s mr.link = #fall.by mr.data run tag @s add mr.breaker
function mineraft:structure/break
