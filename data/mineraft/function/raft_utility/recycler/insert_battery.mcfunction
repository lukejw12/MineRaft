execute as @e[type=marker,tag=this_recycler,limit=1] run scoreboard players set @s has_battery 1
execute as @e[type=marker,tag=this_recycler,limit=1] run scoreboard players set @s battery_uses 5
clear @s minecraft:orange_dye[minecraft:item_model="minecraft:battery"] 1
playsound minecraft:block.lever.click block @a[distance=..10] ~ ~ ~ 1 1.2

execute as @e[type=marker,tag=this_recycler,limit=1] if score @s recycler_value matches 20.. if score @s recycler_state matches 0 run function mineraft:raft_utility/recycler/auto_start_processing