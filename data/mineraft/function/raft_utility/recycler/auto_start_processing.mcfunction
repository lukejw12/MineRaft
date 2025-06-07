scoreboard players set @s recycler_state 1
scoreboard players set @s recycler_timer 0

scoreboard players operation #auto_overflow recycler_value = @s recycler_value
scoreboard players remove #auto_overflow recycler_value 20
scoreboard players operation @s recycler_value = #auto_overflow recycler_value

playsound minecraft:block.furnace.fire_crackle block @a[distance=..10] ~ ~ ~ 1 1
