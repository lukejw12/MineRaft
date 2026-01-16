function mineraft:shark/core/check_water

execute if score @s mr.shark_mode matches 0 run function mineraft:shark/mode/idle
execute if score @s mr.shark_mode matches 1 run function mineraft:shark/mode/charge
execute if score @s mr.shark_mode matches 2 run function mineraft:shark/mode/prowl