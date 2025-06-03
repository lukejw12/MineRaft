scoreboard players set @s shark.detect 2
scoreboard players set @s shark.raft_timer 0
scoreboard players set @s shark.stuck_timer 0

execute unless entity @e[tag=shark_target] run summon marker ~ 0 ~ {Tags:["shark_target"]}

execute unless entity @e[tag=valid_shark_chomp,limit=1] run return 0

scoreboard players set #raft_target_attempts shark.detect 0
scoreboard players set #max_raft_target_attempts shark.detect 8
scoreboard players set #target_found shark.detect 0

function mineraft:shark/try_find_raft_target

execute if score #target_found shark.detect matches 0 run scoreboard players set @s shark.detect 0

kill @e[tag=temp_shark_target]