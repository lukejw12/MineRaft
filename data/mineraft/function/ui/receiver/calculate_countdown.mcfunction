scoreboard players set #remaining_time dummy 18000
scoreboard players operation #remaining_time dummy -= @s receiver_battery_timer
scoreboard players operation #total_seconds dummy = #remaining_time dummy
scoreboard players operation #total_seconds dummy /= 20 constants

scoreboard players operation #minutes dummy = #total_seconds dummy
scoreboard players operation #minutes dummy /= 60 constants
scoreboard players operation #seconds dummy = #total_seconds dummy
scoreboard players operation #seconds dummy %= 60 constants