data modify entity @s data.state set value "purified"
scoreboard players set @s mr.progress 0
function mineraft:structure/water_purifier/model {state:"freshwater"}
function mineraft:structure/water_purifier/fire_off
playsound minecraft:block.brewing_stand.brew block @a ~ ~ ~ 1 1.2
