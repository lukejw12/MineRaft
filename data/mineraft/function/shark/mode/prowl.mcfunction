execute if score @s mr.shark_cooldown matches 300 run tellraw @a ["Shark entered prowl mode. Cooldown: ",{"score":{"name":"@s","objective":"mr.shark_cooldown"}}]

scoreboard players remove @s mr.shark_cooldown 1

execute if score @s mr.shark_cooldown matches 0 run tellraw @a ["Prowl cooldown ENDED (reached 0)"]
execute if score @s mr.shark_cooldown matches ..0 run function mineraft:shark/mode/prowl_check_attack

scoreboard players operation #current_shark_id mr.data = @s mr.shark_id
execute as @a[tag=mr.shark_target] if score @s mr.shark_id = #current_shark_id mr.data run tag @s add mr.my_target

execute if entity @a[tag=mr.my_target] run function mineraft:shark/pathing/follow_prowl_path
execute unless entity @a[tag=mr.my_target] run function mineraft:shark/pathing/follow_wander_path

tag @a remove mr.my_target

execute unless block ~ ~ ~ water run scoreboard players set @s mr.shark_target_y 55
execute unless block ~ ~ ~ water run data modify entity @s Motion[1] set value -0.4d