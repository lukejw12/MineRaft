# data/mineraft/function/raft_utility/recycler/auto_start_processing.mcfunction
scoreboard players set @s recycler_state 1
scoreboard players set @s recycler_timer 0

# Calculate overflow (anything over 20)
scoreboard players operation #auto_overflow recycler_value = @s recycler_value
scoreboard players remove #auto_overflow recycler_value 20
scoreboard players operation @s recycler_value = #auto_overflow recycler_value

playsound minecraft:block.furnace.fire_crackle block @a[distance=..10] ~ ~ ~ 1 1
tellraw @a {"text":"Recycler started processing automatically!","color":"green"}