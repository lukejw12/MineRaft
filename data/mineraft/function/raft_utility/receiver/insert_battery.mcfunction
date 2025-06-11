execute as @e[type=marker,tag=this_receiver,limit=1] run scoreboard players set @s receiver_has_battery 1
execute as @e[type=marker,tag=this_receiver,limit=1] run scoreboard players set @s receiver_battery_timer 0
clear @s minecraft:orange_dye[minecraft:item_model="minecraft:battery"] 1
playsound minecraft:block.lever.click block @a[distance=..10] ~ ~ ~ 1 1.2
