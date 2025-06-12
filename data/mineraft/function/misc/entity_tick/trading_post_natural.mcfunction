execute as @s run data modify entity @s CustomName set value {"text":"Trading Post"}
execute as @s run effect give @s invisibility infinite 100 true
execute as @s run data modify entity @s CustomNameVisible set value 0b
execute as @s run tag @s add named