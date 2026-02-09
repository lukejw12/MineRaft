execute unless score @s mr.shark_mode matches 1 run return fail

scoreboard players operation #current_shark_id mr.data = @s mr.shark_id


execute as @a[tag=mr.shark_target] if score @s mr.shark_id = #current_shark_id mr.data run tag @s add mr.my_target

execute unless entity @a[tag=mr.my_target,distance=..40] run function mineraft:shark/mode/return_to_idle
execute as @a[tag=mr.my_target] at @s unless block ~ ~ ~ water run function mineraft:shark/mode/return_to_idle

execute unless score @s mr.shark_mode matches 1 run return fail
execute if entity @a[tag=mr.my_target] run function mineraft:shark/mode/charge_process

tag @a remove mr.my_target