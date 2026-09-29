data modify entity @s data.state set value "finished"
scoreboard players set @s mr.progress 0
scoreboard players set @s mr.timer 0
scoreboard players set @s mr.timer2 0
function mineraft:structure/recycler/model/finished with entity @s data
playsound minecraft:block.note_block.bell block @a ~ ~ ~ 1 1.2
