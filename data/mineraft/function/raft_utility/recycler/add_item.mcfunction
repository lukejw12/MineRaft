scoreboard players set #item_value recycler_value 0

execute on target if items entity @s weapon.mainhand minecraft:repeating_command_block run scoreboard players set #item_value recycler_value 3
execute on target if items entity @s weapon.mainhand minecraft:jigsaw run scoreboard players set #item_value recycler_value 1
execute on target if items entity @s weapon.mainhand minecraft:prismarine_crystals run scoreboard players set #item_value recycler_value 5
execute on target if items entity @s weapon.mainhand minecraft:magenta_dye run scoreboard players set #item_value recycler_value 2
execute on target if items entity @s weapon.mainhand minecraft:string run scoreboard players set #item_value recycler_value 1

execute if score #item_value recycler_value matches 1.. run function mineraft:raft_utility/recycler/add_valid_item