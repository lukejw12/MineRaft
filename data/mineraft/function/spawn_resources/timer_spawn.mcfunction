
execute store result score #amt central_raft_amount if entity @e[tag=central_raft]
execute if score #amt central_raft_amount matches 2.. run kill @e[tag=central_raft,limit=1]

scoreboard players add #amt resource_delay 1

execute if score #amt resource_delay matches 320.. run function mineraft:spawn_resources/do_spawn
execute if score #amt resource_delay matches 320.. run scoreboard players set #amt resource_delay 0