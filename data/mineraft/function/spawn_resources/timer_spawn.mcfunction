execute store result score #amt central_raft_amount if entity @e[tag=central_raft]
execute if score #amt central_raft_amount matches 2.. run kill @e[tag=central_raft,limit=1]

scoreboard players add #amt resource_delay 1

execute if score #amt resource_delay matches 320.. if score #total net_amount matches 0..5 store result storage rndm random int 1 run random value 4..10
execute if score #amt resource_delay matches 320.. if score #total net_amount matches 6..10 store result storage rndm random int 1 run random value 11..20
execute if score #amt resource_delay matches 320.. if score #total net_amount matches 11..15 store result storage rndm random int 1 run random value 21..30
execute if score #amt resource_delay matches 320.. if score #total net_amount matches 16.. store result storage rndm random int 1 run random value 31..40
execute if score #amt resource_delay matches 320.. run function mineraft:spawn_resources/random_spawn_amount with storage minecraft:rndm