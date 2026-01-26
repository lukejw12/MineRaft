data modify entity @s data.state set value "purified"

scoreboard players set @s mr.purifier_progress 0

function mineraft:structures/water_purifier/models/purify/update

playsound minecraft:block.brewing_stand.brew block @a ~ ~ ~ 1 1.2
