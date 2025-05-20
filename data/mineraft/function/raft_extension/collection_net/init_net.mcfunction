


execute store result score @s net_id run scoreboard players add #global net_id_counter 1


execute as @e[type=interaction,tag=new_interact,limit=1] run scoreboard players operation @s net_id = @e[type=marker,tag=new_net,limit=1] net_id


data modify entity @s data.Type1 set value {}
data modify entity @s data.Type2 set value {}
data modify entity @s data.Type3 set value {}


tag @s remove new_net
tag @e[type=interaction,tag=new_interact] remove new_interact