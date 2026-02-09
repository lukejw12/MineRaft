execute as @a[tag=mr.my_target] run tag @s add mr.shark_immunity
schedule function mineraft:shark/mode/remove_immunity 100t replace

scoreboard players operation #current_shark_id mr.data = @s mr.shark_id

execute as @a[tag=mr.my_target,limit=1] run damage @s 8 minecraft:mob_attack by @e[type=armor_stand,tag=mr.shark,limit=1,sort=nearest]

execute as @a[tag=mr.shark_target] if score @s mr.shark_id = #current_shark_id mr.data run tag @s remove mr.shark_target
execute as @a if score @s mr.shark_id = #current_shark_id mr.data run scoreboard players reset @s mr.shark_id

scoreboard players set @s mr.shark_mode 2
scoreboard players set @s mr.shark_cooldown 300
scoreboard players set @s mr.shark_target_y 58

scoreboard players operation #shark_id mr.data = @s mr.shark_id
execute as @e[type=item_display,tag=aj.mineraft.root] if score @s mr.shark_id = #shark_id mr.data run function animated_java:mineraft/animations/steve_swim_idle/play

particle minecraft:bubble ~ ~ ~ 0.5 0.5 0.5 0.1 20
playsound entity.fox.bite hostile @a ~ ~ ~ 2 0