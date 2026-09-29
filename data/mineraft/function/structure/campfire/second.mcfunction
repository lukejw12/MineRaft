scoreboard players remove @s mr.progress 20
scoreboard players remove @s mr.fuel 1
execute if score @s mr.fuel matches 0 unless score #sp.sailing sp.data matches 1 if block ~ ~ ~ minecraft:campfire run setblock ~ ~ ~ minecraft:campfire[lit=false]
execute if score @s mr.fuel matches 0 if score #sp.sailing sp.data matches 1 run function mineraft:structure/campfire/proxy {lit:"false"}
execute if data entity @s data.slot1 unless data entity @s data.slot1{done:1b} run function mineraft:structure/campfire/cook {n:1}
execute if data entity @s data.slot2 unless data entity @s data.slot2{done:1b} run function mineraft:structure/campfire/cook {n:2}
execute if data entity @s data.slot3 unless data entity @s data.slot3{done:1b} run function mineraft:structure/campfire/cook {n:3}
execute if data entity @s data.slot4 unless data entity @s data.slot4{done:1b} run function mineraft:structure/campfire/cook {n:4}
