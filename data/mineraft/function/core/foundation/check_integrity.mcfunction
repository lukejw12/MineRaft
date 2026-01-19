scoreboard players set #barrier_count mr.data 0

execute if block ~1 62 ~1 barrier run scoreboard players add #barrier_count mr.data 1
execute if block ~1 62 ~0 barrier run scoreboard players add #barrier_count mr.data 1
execute if block ~1 62 ~-1 barrier run scoreboard players add #barrier_count mr.data 1
execute if block ~0 62 ~1 barrier run scoreboard players add #barrier_count mr.data 1
execute if block ~0 62 ~0 barrier run scoreboard players add #barrier_count mr.data 1
execute if block ~0 62 ~-1 barrier run scoreboard players add #barrier_count mr.data 1
execute if block ~-1 62 ~1 barrier run scoreboard players add #barrier_count mr.data 1
execute if block ~-1 62 ~0 barrier run scoreboard players add #barrier_count mr.data 1
execute if block ~-1 62 ~-1 barrier run scoreboard players add #barrier_count mr.data 1
execute if entity @s[tag=mr.collection_net] run scoreboard players add #barrier_count mr.data 1

execute unless score #barrier_count mr.data matches 9 run particle item{item:{id:egg,components:{item_model:"mineraft:particle/wood"}}} ~ ~1 ~ 0.5 0 0.5 0.1 100 normal
execute unless score #barrier_count mr.data matches 9 run fill ~1 62 ~1 ~-1 61 ~-1 water
execute unless score #barrier_count mr.data matches 9 run kill @s
