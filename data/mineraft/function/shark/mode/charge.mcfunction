execute unless entity @a[tag=mr.shark_target,distance=..40] run function mineraft:shark/mode/return_to_idle

execute if entity @a[tag=mr.shark_target] at @a[tag=mr.shark_target,limit=1] unless block ~ ~ ~ water run function mineraft:shark/mode/return_to_idle

execute if entity @a[tag=mr.shark_target] run function mineraft:shark/mode/charge_process