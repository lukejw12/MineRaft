
execute store result score #ty shark.detect run data get entity @e[tag=shark_target,limit=1] Pos[1] 10
execute store result score #sy shark.detect run data get entity @s Pos[1] 10
scoreboard players operation #dy shark.detect = #ty shark.detect
scoreboard players operation #dy shark.detect -= #sy shark.detect

execute if score #dy shark.detect matches 1.. run data modify entity @s Motion[1] set value 0.2d
execute if score #dy shark.detect matches ..-1 run data modify entity @s Motion[1] set value -0.2d
execute if score #dy shark.detect matches 0 run data modify entity @s Motion[1] set value 0.0d

tp @s ~ ~ ~ facing entity @e[tag=shark_target,limit=1] eyes

execute if score #dy shark.detect matches 0 run execute at @s rotated ~ 0 run function mineraft:shark/apply_horizontal_motion
