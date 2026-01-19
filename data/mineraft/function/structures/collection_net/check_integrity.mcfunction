scoreboard players set #barrier_count mr.data 0

execute if block ~1 62 ~1 barrier run scoreboard players add #barrier_count mr.data 1
execute if block ~1 62 ~0 barrier run scoreboard players add #barrier_count mr.data 1
execute if block ~1 62 ~-1 barrier run scoreboard players add #barrier_count mr.data 1
execute if block ~0 62 ~1 barrier run scoreboard players add #barrier_count mr.data 1
execute if block ~0 62 ~0 water run scoreboard players add #barrier_count mr.data 1
execute if block ~0 62 ~-1 barrier run scoreboard players add #barrier_count mr.data 1
execute if block ~-1 62 ~1 barrier run scoreboard players add #barrier_count mr.data 1
execute if block ~-1 62 ~0 barrier run scoreboard players add #barrier_count mr.data 1
execute if block ~-1 62 ~-1 barrier run scoreboard players add #barrier_count mr.data 1

execute unless score #barrier_count mr.data matches 9 run function mineraft:structures/collection_net/destroy