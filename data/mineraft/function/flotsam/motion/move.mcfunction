execute unless block ~ ~ ~ water run return fail

execute store result score #current_motion mr.data run data get entity @s Motion[0] 1000
execute unless score #current_motion mr.data matches -100..100 run return fail

data modify entity @s Motion[0] set value -0.1d
execute if block ~ ~0.6 ~ water run data modify entity @s Motion[1] set value 0.05d
execute if block ~ ~0.5 ~ air run data modify entity @s Motion[1] set value -0.005
