scoreboard players remove @s mr.shark_cooldown 1

execute if score @s mr.shark_cooldown matches ..0 run function mineraft:shark/mode/prowl_check_attack

execute if entity @a[tag=mr.shark_target] run function mineraft:shark/pathing/follow_prowl_path
execute unless entity @a[tag=mr.shark_target] run function mineraft:shark/pathing/follow_wander_path

execute unless block ~ ~ ~ water run scoreboard players set @s mr.shark_target_y 55
execute unless block ~ ~ ~ water run data modify entity @s Motion[1] set value -0.4d