execute if entity @a[distance=..50] as @a[distance=..50,limit=1,sort=nearest] at @s if block ~ ~ ~ water run function mineraft:shark/mode/switch_to_charge

execute if score @s mr.shark_mode matches 0 run function mineraft:shark/mode/idle_process