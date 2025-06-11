execute as @e[type=marker,tag=receiver_active,sort=nearest,limit=1,distance=..3] run tag @s add this_receiver

execute on target if items entity @s weapon.mainhand minecraft:compass[minecraft:item_model="minecraft:radar"] if score @e[type=marker,tag=this_receiver,limit=1] receiver_has_battery matches 1 run function mineraft:raft_utility/receiver/show_radar_menu

execute on target if items entity @s weapon.mainhand minecraft:compass[minecraft:item_model="minecraft:radar"] if score @e[type=marker,tag=this_receiver,limit=1] receiver_has_battery matches 0 run tellraw @s {"text":"Receiver requires a battery to function!","color":"red"}

execute on target if items entity @s weapon.mainhand minecraft:orange_dye[minecraft:item_model="minecraft:battery"] if score @e[type=marker,tag=this_receiver,limit=1] receiver_has_battery matches 0 run function mineraft:raft_utility/receiver/insert_battery

tag @e[tag=this_receiver] remove this_receiver