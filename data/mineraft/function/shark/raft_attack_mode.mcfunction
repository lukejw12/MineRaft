
execute at @s store result score #is_close shark.detect if entity @e[tag=shark_target,distance=..6]

execute if score #is_close shark.detect matches 1.. run scoreboard players add @s shark.raft_timer 1

execute if score @s shark.raft_timer matches 1 store result score @s shark.health run data get entity @s Health

execute store result score #current_health shark.detect run data get entity @s Health
scoreboard players operation #health_diff shark.detect = @s shark.health
scoreboard players operation #health_diff shark.detect -= #current_health shark.detect
execute if score #health_diff shark.detect matches 5.. run function mineraft:shark/abandon_attack

execute at @s unless block ~ ~1 ~ #minecraft:raft_replacable run function mineraft:shark/unstuck_shark

execute at @s if entity @e[tag=shark_target,distance=..3] run function mineraft:shark/stay_at_target
execute at @s unless entity @e[tag=shark_target,distance=..3] run function mineraft:shark/move_to_target

execute if score @s shark.raft_timer matches 200 run function mineraft:shark/finish_attack