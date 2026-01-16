execute as @a[tag=mr.shark_target,limit=1] run damage @s 8 minecraft:mob_attack by @e[type=armor_stand,tag=mr.shark,limit=1,sort=nearest]

scoreboard players set @s mr.shark_mode 2
scoreboard players set @s mr.shark_cooldown 300
scoreboard players set @s mr.shark_target_y 58

particle minecraft:bubble ~ ~ ~ 0.5 0.5 0.5 0.1 20
playsound entity.fox.bite hostile @a ~ ~ ~ 2 0
