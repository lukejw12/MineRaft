scoreboard players set #hb.mine mr.data 0
execute on attacker if entity @s[tag=mr.interacting] run scoreboard players set #hb.mine mr.data 1
execute if score #hb.mine mr.data matches 0 run return 0
data remove entity @s attack
execute at @s run function mineraft:structure/hitbox/dispatch {h:"attack"}
