execute as @e[type=marker,tag=this_recycler,limit=1] run scoreboard players set @s recycler_state 1
execute as @e[type=marker,tag=this_recycler,limit=1] run scoreboard players set @s recycler_timer 0

scoreboard players operation #overflow recycler_value = #new_total recycler_value
scoreboard players remove #overflow recycler_value 20
execute as @e[type=marker,tag=this_recycler,limit=1] run scoreboard players operation @s recycler_value = #overflow recycler_value

playsound minecraft:block.furnace.fire_crackle block @a[distance=..10] ~ ~ ~ 1 1