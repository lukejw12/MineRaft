scoreboard players operation #new_total recycler_value = @e[type=marker,tag=this_recycler,limit=1] recycler_value
scoreboard players operation #new_total recycler_value += #item_value recycler_value

execute if score #new_total recycler_value matches 20.. if score @e[type=marker,tag=this_recycler,limit=1] has_battery matches 1 run function mineraft:raft_utility/recycler/start_processing

execute unless score #new_total recycler_value matches 20.. run function mineraft:raft_utility/recycler/add_to_storage
execute if score #new_total recycler_value matches 20.. unless score @e[type=marker,tag=this_recycler,limit=1] has_battery matches 1 run function mineraft:raft_utility/recycler/add_to_storage

execute on target if items entity @s weapon.mainhand minecraft:command_block run clear @s minecraft:command_block 1
execute on target if items entity @s weapon.mainhand minecraft:jigsaw run clear @s minecraft:jigsaw 1
execute on target if items entity @s weapon.mainhand minecraft:prismarine_crystals run clear @s minecraft:prismarine_crystals 1
execute on target if items entity @s weapon.mainhand minecraft:magenta_dye run clear @s minecraft:magenta_dye 1
execute on target if items entity @s weapon.mainhand minecraft:string run clear @s minecraft:string 1

playsound minecraft:entity.item.pickup block @a[distance=..10] ~ ~ ~ 0.5 1.2