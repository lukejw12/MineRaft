execute if score #net.i mr.data matches 0 run tp @s ~-0.5 ~0.6 ~-0.5
execute if score #net.i mr.data matches 1 run tp @s ~0.5 ~0.6 ~-0.5
execute if score #net.i mr.data matches 2 run tp @s ~-0.5 ~0.6 ~0.5
execute if score #net.i mr.data matches 3 run tp @s ~0.5 ~0.6 ~0.5
execute if score #net.i mr.data matches 4 run tp @s ~ ~0.6 ~
execute if score #net.i mr.data matches 5 run tp @s ~-0.7 ~0.65 ~
execute if score #net.i mr.data matches 6 run tp @s ~0.7 ~0.65 ~
execute if score #net.i mr.data matches 7 run tp @s ~ ~0.65 ~-0.7
execute if score #net.i mr.data matches 8 run tp @s ~ ~0.65 ~0.7
execute if score #net.i mr.data matches 9 run tp @s ~-0.35 ~0.7 ~-0.35
execute if score #net.i mr.data matches 10 run tp @s ~0.35 ~0.7 ~-0.35
execute if score #net.i mr.data matches 11 run tp @s ~-0.35 ~0.7 ~0.35
execute if score #net.i mr.data matches 12 run tp @s ~0.35 ~0.7 ~0.35
execute if score #net.i mr.data matches 13 run tp @s ~ ~0.7 ~
execute if score #net.i mr.data matches 14 run tp @s ~ ~0.75 ~
execute if score #net.i mr.data matches 15.. run tp @s ~ ~1 ~
execute store result entity @s Rotation[0] float 1 run random value 0..360
execute store result entity @s Rotation[1] float 1 run random value -45..45
