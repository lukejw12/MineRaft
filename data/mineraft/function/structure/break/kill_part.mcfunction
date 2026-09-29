execute if entity @s[tag=mr.p.shulker] on passengers run tag @s add mr.dead
execute if entity @s[tag=mr.p.shulker] on passengers run tp @s ~ -200 ~
kill @e[type=shulker,tag=mr.dead]
kill @s
