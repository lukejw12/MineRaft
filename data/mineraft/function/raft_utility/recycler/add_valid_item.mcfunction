scoreboard players operation #new_total recycler_value = @e[type=marker,tag=this_recycler,limit=1] recycler_value
scoreboard players operation #new_total recycler_value += #item_value recycler_value

execute if score #new_total recycler_value matches 20.. run function mineraft:raft_utility/recycler/start_processing
execute if score #new_total recycler_value matches ..19 run function mineraft:raft_utility/recycler/add_to_storage

execute on target run clear @s minecraft:repeating_command_block 1
execute on target run clear @s minecraft:jigsaw 1
execute on target run clear @s minecraft:prismarine_crystals 1
execute on target run clear @s minecraft:magenta_dye 1
execute on target run clear @s minecraft:string 1

playsound minecraft:entity.item.pickup block @a[distance=..10] ~ ~ ~ 0.5 1.2