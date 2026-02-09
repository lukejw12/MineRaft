function mineraft:shark/core/check_water

execute if score @s mr.shark_mode matches 0 run function mineraft:shark/mode/idle
execute if score @s mr.shark_mode matches 1 run function mineraft:shark/mode/charge
execute if score @s mr.shark_mode matches 2 run function mineraft:shark/mode/prowl

execute as @e[type=item_display,tag=aj.mineraft.root] if score @s mr.shark_id = @e[type=armor_stand,tag=mr.shark,limit=1,sort=nearest] mr.shark_id run tp @s ~ ~ ~ ~180 ~