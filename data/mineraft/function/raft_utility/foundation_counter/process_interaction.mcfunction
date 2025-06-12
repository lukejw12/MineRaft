function mineraft:raft_utility/foundation_counter/count_foundations

scoreboard players set #temp_nets dummy 0
execute as @e[tag=active_net,type=marker] run scoreboard players add #temp_nets dummy 1

execute on target run tellraw @s [{"text":"Foundations: ","color":"gray"},{"score":{"name":"@e[type=marker,tag=counter_active,limit=1,sort=nearest]","objective":"foundation_count"},"color":"aqua"},{"text":" | Nets: ","color":"gray"},{"score":{"name":"#temp_nets","objective":"dummy"},"color":"green"}]

playsound minecraft:ui.button.click block @a[distance=..10] ~ ~ ~ 0.8 1.2