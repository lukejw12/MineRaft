function mineraft:raft_utility/foundation_counter/count_foundations

execute on target run tellraw @s [{"text":"Foundations: ","color":"gray"},{"score":{"name":"@e[type=marker,tag=counter_active,limit=1,sort=nearest]","objective":"foundation_count"},"color":"aqua"}]

playsound minecraft:ui.button.click block @a[distance=..10] ~ ~ ~ 0.8 1.2