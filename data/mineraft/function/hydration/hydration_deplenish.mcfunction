scoreboard players add #timer hydration_counter 1
execute if score #timer hydration_counter matches 1500.. run scoreboard players remove @a[scores={hydration=1..},gamemode=!creative] hydration 5
execute if score #timer hydration_counter matches 1500.. run scoreboard players set #timer hydration_counter 0
execute as @a[scores={hydration=..0}] run schedule function mineraft:hydration/hydration_damage 20t append
execute as @a[scores={death=1..}] run scoreboard players set @s hydration 100
execute as @a[scores={death=1..}] run scoreboard players set @s death 0
execute as @a[scores={hydration=..0}] run scoreboard players set @s hydration 0

execute as @a[scores={hydration=..5}] at @s run title @s times 0 1000000000 0
execute as @a[scores={hydration=..5}] at @s run title @s title {"text":"\uE000"}
execute as @a[scores={hydration=6..}] at @s run title @s reset
