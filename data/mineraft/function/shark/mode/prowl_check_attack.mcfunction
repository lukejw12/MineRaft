execute if entity @a[distance=..25] as @a[distance=..25,limit=1,sort=nearest] at @s if block ~ ~ ~ water run tag @s add mr.shark_target

execute if entity @a[tag=mr.shark_target] run scoreboard players set @e[type=armor_stand,tag=mr.shark,limit=1,sort=nearest] mr.shark_mode 1
execute unless entity @a[tag=mr.shark_target] run scoreboard players set @e[type=armor_stand,tag=mr.shark,limit=1,sort=nearest] mr.shark_target_y 58
execute unless entity @a[tag=mr.shark_target] run function mineraft:shark/mode/return_to_idle

