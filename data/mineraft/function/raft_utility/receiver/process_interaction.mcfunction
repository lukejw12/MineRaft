execute as @e[type=marker,tag=receiver_active,sort=nearest,limit=1,distance=..3] run tag @s add this_receiver

execute on target if items entity @s weapon.mainhand minecraft:compass[minecraft:item_model="minecraft:radar"] run function mineraft:raft_utility/receiver/show_radar_menu

tag @e[tag=this_receiver] remove this_receiver