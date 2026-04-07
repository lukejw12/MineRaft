execute store result score #battery_life mr.data run data get entity @s data.battery_life
execute store result storage mineraft:recycler battery_life int 1 run scoreboard players get #battery_life mr.data
scoreboard players set #battery_damage mr.data 100
scoreboard players operation #battery_damage mr.data -= #battery_life mr.data
execute store result storage mineraft:recycler battery_damage int 1 run scoreboard players get #battery_damage mr.data

data modify entity @s data.has_battery set value 0b
data modify entity @s data.battery_life set value 0

execute as @a[tag=mr.interacting] run function mineraft:structures/recycler/interaction/battery/give_battery with storage mineraft:recycler

playsound minecraft:block.iron_door.open block @a ~ ~ ~ 1 1.2
particle smoke ~ ~0.5 ~ 0.2 0.2 0.2 0.01 5

execute if data entity @s {data:{state:"recycling"}} run function mineraft:structures/recycler/models/idle/update
