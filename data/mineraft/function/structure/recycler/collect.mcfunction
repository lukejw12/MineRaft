data modify storage mineraft:tmp g set value {id:"trash_cube"}
data modify storage mineraft:tmp g.count set from entity @s data.cube_count
execute as @a[tag=mr.interacting,limit=1] run function mineraft:util/give_n with storage mineraft:tmp g
data modify entity @s data.state set value "idle"
data modify entity @s data.cube_count set value 0
scoreboard players set @s mr.fill 0
scoreboard players set @s mr.progress 0
scoreboard players set @s mr.timer 0
scoreboard players set @s mr.timer2 0
function mineraft:structure/recycler/model/idle with entity @s data
playsound minecraft:entity.item.pickup player @a[tag=mr.interacting] ~ ~ ~ 1 1
particle happy_villager ~ ~0.8 ~ 0.2 0.2 0.2 0 10
