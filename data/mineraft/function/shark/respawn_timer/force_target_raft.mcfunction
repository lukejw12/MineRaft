
execute unless entity @e[tag=shark_target] run summon marker ~ 0 ~ {Tags:["shark_target"]}

execute as @e[tag=shark] at @s run function mineraft:shark/raft_attack_mode

