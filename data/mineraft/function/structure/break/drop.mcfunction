summon item ~ ~0.5 ~ {Item:{id:"minecraft:stone",count:1},PickupDelay:10,Tags:["mr.drop"]}
data modify entity @e[type=item,tag=mr.drop,limit=1,sort=nearest] Item set from entity @s data.mr.item
execute as @a[tag=mr.breaker,limit=1] at @s run tp @e[type=item,tag=mr.drop,limit=1,sort=nearest] ~ ~0.5 ~
tag @e[type=item,tag=mr.drop] remove mr.drop
