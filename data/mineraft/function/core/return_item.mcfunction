summon item ~ ~1 ~ {Item:{id:"minecraft:barrier",count:1},PickupDelay:0,Tags:["mr.loot"]}
data modify entity @e[tag=mr.loot,limit=1] Item set from entity @s data.placed_item
execute as @p[distance=..10] at @s run tp @e[tag=mr.loot,limit=1] ~ ~0.5 ~
tag @e[tag=mr.loot] remove mr.loot
