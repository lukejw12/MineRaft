execute if entity @s[tag=mr.falling] run return 0
tag @s add mr.falling
execute store result score @s mr.fall run random value 5..9
scoreboard players set @s mr.by 0
execute if entity @a[tag=mr.breaker,limit=1] run scoreboard players operation @s mr.by = @a[tag=mr.breaker,limit=1] mr.link
