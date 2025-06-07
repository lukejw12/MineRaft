scoreboard players set #item_value recycler_value 0

execute if score @e[type=marker,tag=this_recycler,limit=1] recycler_value matches 20.. unless score @e[type=marker,tag=this_recycler,limit=1] has_battery matches 1 run return 0

execute on target if items entity @s weapon.mainhand minecraft:command_block run scoreboard players set #item_value recycler_value 3
execute on target if items entity @s weapon.mainhand minecraft:jigsaw run scoreboard players set #item_value recycler_value 1
execute on target if items entity @s weapon.mainhand minecraft:prismarine_crystals run scoreboard players set #item_value recycler_value 5
execute on target if items entity @s weapon.mainhand minecraft:magenta_dye run scoreboard players set #item_value recycler_value 2
execute on target if items entity @s weapon.mainhand minecraft:string run scoreboard players set #item_value recycler_value 1

execute if score #item_value recycler_value matches 1.. run function mineraft:raft_utility/recycler/add_valid_item