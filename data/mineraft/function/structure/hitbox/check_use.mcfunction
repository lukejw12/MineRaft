scoreboard players set #hb.mine mr.data 0
execute on target if entity @s[tag=mr.interacting] run scoreboard players set #hb.mine mr.data 1
execute if score #hb.mine mr.data matches 0 run return 0
data remove entity @s interaction
execute at @s run function mineraft:structure/hitbox/dispatch {h:"interact"}
