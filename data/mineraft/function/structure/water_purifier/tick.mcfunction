execute unless data entity @s {data:{state:"purifying"}} run return 0
execute unless score @s mr.fuel matches 1.. run return 0
scoreboard players add @s mr.timer 1
scoreboard players operation #wp.id mr.data = @s mr.id
scoreboard players set #wp.fire mr.data 0
execute as @e[type=text_display,tag=mr.p.fire,distance=..3] if score @s mr.id = #wp.id mr.data run scoreboard players set #wp.fire mr.data 1
execute if score #wp.fire mr.data matches 0 run function mineraft:structure/water_purifier/fire_on with entity @s data.fire
execute if score @s mr.timer matches 20.. run function mineraft:structure/water_purifier/second
