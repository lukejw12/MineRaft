execute store result score #rc.life mr.data run data get entity @s data.battery_life
data modify storage mineraft:tmp bat set value {}
execute store result storage mineraft:tmp bat.battery_life int 1 run scoreboard players get #rc.life mr.data
scoreboard players set #rc.dmg mr.data 100
scoreboard players operation #rc.dmg mr.data -= #rc.life mr.data
execute store result storage mineraft:tmp bat.battery_damage int 1 run scoreboard players get #rc.dmg mr.data
data modify entity @s data.has_battery set value 0b
data modify entity @s data.battery_life set value 0
execute as @a[tag=mr.interacting,limit=1] run function mineraft:structure/recycler/give_battery with storage mineraft:tmp bat
playsound minecraft:block.iron_door.open block @a ~ ~ ~ 1 1.2
particle smoke ~ ~0.5 ~ 0.2 0.2 0.2 0.01 5
execute if data entity @s {data:{state:"recycling"}} run function mineraft:structure/recycler/model/idle with entity @s data
