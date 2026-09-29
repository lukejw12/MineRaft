scoreboard players set #ray.kind mr.data 1
execute if block ~ ~ ~ minecraft:waxed_oxidized_copper_bars run scoreboard players set #ray.kind mr.data 2
execute if block ~ ~ ~ #minecraft:campfires run scoreboard players set #ray.kind mr.data 3
execute summon marker run function mineraft:place/ray/read
