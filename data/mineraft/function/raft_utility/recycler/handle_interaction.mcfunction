
execute on target if items entity @s weapon.mainhand minecraft:structure_block run function mineraft:hammer/hammer_right_click
execute on target unless items entity @s weapon.mainhand minecraft:structure_block run function mineraft:raft_utility/recycler/process_item
