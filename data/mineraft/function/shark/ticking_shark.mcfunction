
execute if score #current weather.state matches 0 as @s[tag=shark] at @s if entity @e[tag=valid_shark_chomp,type=marker,distance=0..] if score @s shark.detect matches 0..1 if predicate mineraft:shark_raft_chance run function mineraft:shark/target_raft
execute if score #current weather.state matches 1 as @s[tag=shark] at @s if entity @e[tag=valid_shark_chomp,type=marker,distance=0..] if score @s shark.detect matches 0..1 if predicate mineraft:shark_raft_chance_light_breeze run function mineraft:shark/target_raft
execute if score #current weather.state matches 2 as @s[tag=shark] at @s if entity @e[tag=valid_shark_chomp,type=marker,distance=0..] if score @s shark.detect matches 0..1 if predicate mineraft:shark_raft_chance_storm run function mineraft:shark/target_raft
execute if score #current weather.state matches 3 as @s[tag=shark] at @s if entity @e[tag=valid_shark_chomp,type=marker,distance=0..] if score @s shark.detect matches 0..1 if predicate mineraft:shark_raft_chance_heavy_storm run function mineraft:shark/target_raft



effect give @s water_breathing infinite 1 true
effect give @s invisibility infinite 1 true
effect clear @a dolphins_grace
attribute @s scale base set 1.6

execute as @s at @s unless entity @a[distance=..60,predicate=mineraft:in_water,gamemode=survival,predicate=!mineraft:is_riding,predicate=!mineraft:repellent] unless score @s shark.detect matches 2 run scoreboard players set @s shark.detect 0
execute as @s at @s if entity @a[distance=..60,predicate=mineraft:in_water,gamemode=survival,predicate=!mineraft:is_riding,predicate=!mineraft:repellent] unless score @s shark.detect matches 2 run scoreboard players set @s shark.detect 1

execute as @e[scores={shark.detect=0}] at @s run function mineraft:shark/circle_mode
execute as @e[scores={shark.detect=1}] at @s run function mineraft:shark/attack_mode
execute as @e[scores={shark.detect=2}] at @s run function mineraft:shark/raft_attack_mode

execute if score #attack_timer shark.timer matches 20.. as @s at @s if entity @a[distance=..2,predicate=mineraft:in_water] run damage @a[distance=..2,predicate=mineraft:in_water,limit=1,sort=nearest,predicate=!mineraft:is_riding] 6 mob_attack by @e[tag=shark_name,limit=1]
execute if score #attack_timer shark.timer matches 20.. run scoreboard players set #attack_timer shark.timer 0
execute if entity @a[distance=..7,predicate=mineraft:in_water] run scoreboard players add #attack_timer shark.timer 1
execute unless entity @a[predicate=mineraft:in_water] run scoreboard players set #attack_timer shark.timer 0
execute as @s at @s unless block ~ ~0.5 ~ #minecraft:raft_replacable run tp @s ~ ~-1.5 ~
execute as @s at @s unless block ~ ~0.5 ~ #minecraft:raft_replacable run data modify entity @s Motion[1] set value -0.5d

execute at @s if entity @e[scores={shark.detect=0..1}] as @s at @s rotated ~-180 0 run tp @e[type=item_display,tag=aj.shark_swim.root] ~ ~ ~ ~ ~
execute at @s if entity @e[scores={shark.detect=2}] as @s at @s rotated ~-180 0 run tp @e[type=item_display,tag=aj.shark_swim.root] ~ ~0.6 ~ ~ ~


execute if entity @e[scores={shark.detect=0}] as @e[type=item_display,tag=aj.shark_swim.root] run function animated_java:shark_swim/animations/shark_swim_1/next_frame
execute if entity @e[scores={shark.detect=1..2}] as @e[type=item_display,tag=aj.shark_swim.root] run function animated_java:shark_swim/animations/shark_swim_attack/next_frame
tp @e[tag=shark_name] ~ ~ ~ ~ ~
execute as @s at @s at @e[tag=!sail,distance=..3,predicate=mineraft:in_water,type=#boat] run particle poof ~ ~1 ~ 0.3 0.3 0.3 0 10 force
execute as @s at @s if entity @e[tag=!sail,distance=..3,predicate=mineraft:in_water,type=#boat] run kill @e[tag=!sail,distance=..3,predicate=mineraft:in_water,type=#boat]


execute store result score #shark_amount shark.timer if entity @e[tag=shark]
execute if score #shark_amount shark.timer matches 2.. run kill @e[tag=shark,limit=1]