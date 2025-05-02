execute unless entity @s[scores={fishing_state=0..}] run scoreboard players set @s fishing_state 0
execute as @s[scores={fishing_state=1..}] at @s unless entity @e[type=fishing_bobber,distance=..1] at @s run scoreboard players remove @s fishing_state 1
execute as @e[type=fishing_bobber] at @s as @e[type=item,distance=..1] run scoreboard players set @s fishing_state 20

execute as @s[scores={fishing_state=1}] run data merge entity @s {Motion:[0.0,0.0,0.0]}

execute as @e[type=item,scores={fishing_state=1}] at @s unless entity @e[type=fishing_bobber,distance=..1] run scoreboard players set @s fishing_state 0

execute as @s[scores={fishing_state=0}] at @s unless entity @e[type=fishing_bobber,distance=..1] positioned ~ ~-0.1 ~ unless block ~ ~ ~ air run data merge entity @s {Motion:[0.0,0.1,0.0]}
execute as @s[scores={fishing_state=0}] at @s unless entity @e[type=fishing_bobber,distance=..1] if score #total net_amount matches 0..5 run data merge entity @s {Motion:[0.0,0.0,0.1]}
execute as @s[scores={fishing_state=0}] at @s unless entity @e[type=fishing_bobber,distance=..1] if score #total net_amount matches 6..10 run data merge entity @s {Motion:[0.0,0.0,0.2]}
execute as @s[scores={fishing_state=0}] at @s unless entity @e[type=fishing_bobber,distance=..1] if score #total net_amount matches 11.. run data merge entity @s {Motion:[0.0,0.0,0.3]}
execute if score #total net_amount matches 0..10 run scoreboard players add @s lifetime 1
execute if score #total net_amount matches 11.. run scoreboard players add @s lifetime 2



execute as @s[scores={lifetime=1000..}] run particle poof ~ ~ ~ 0 0 0 0 10 force
execute as @s[scores={lifetime=1000..}] run kill @s


execute if score #total net_amount matches 0..10 unless entity @a[distance=..40] at @s run particle poof ~ ~ ~ 0 0 0 0 10 force
execute if score #total net_amount matches 0..10 unless entity @a[distance=..40] at @s run kill @s

execute if score #total net_amount matches 11..15 unless entity @a[distance=..60] at @s run particle poof ~ ~ ~ 0 0 0 0 5 force
execute if score #total net_amount matches 11..15 unless entity @a[distance=..60] at @s run kill @s

execute if score #total net_amount matches 16.. unless entity @a[distance=..85] at @s run particle poof ~ ~ ~ 0 0 0 0 1 force
execute if score #total net_amount matches 16.. unless entity @a[distance=..85] at @s run kill @s