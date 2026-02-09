function mineraft:shark/core/check_water

execute if score @s mr.shark_mode matches 0 run function mineraft:shark/mode/idle
execute if score @s mr.shark_mode matches 1 run function mineraft:shark/mode/charge
execute if score @s mr.shark_mode matches 2 run function mineraft:shark/mode/prowl

scoreboard players operation #shark_id mr.data = @s mr.shark_id
execute as @e[type=item_display,tag=aj.mineraft.root,sort=nearest,limit=1] if score @s mr.shark_id = #shark_id mr.data run tp @s ~ ~ ~ ~180 ~