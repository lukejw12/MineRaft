data modify entity @s data.state set value "finished"

scoreboard players set @s mr.recycler_progress 0
scoreboard players set @s mr.recycler_tick 0
scoreboard players set @s mr.recycler_battery_tick 0

function mineraft:structures/recycler/models/finished/update

playsound minecraft:block.note_block.bell block @a ~ ~ ~ 1 1.2