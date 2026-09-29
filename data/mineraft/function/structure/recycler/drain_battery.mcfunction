execute store result score #rc.life mr.data run data get entity @s data.battery_life
scoreboard players remove #rc.life mr.data 1
execute if score #rc.life mr.data matches ..-1 run scoreboard players set #rc.life mr.data 0
execute store result entity @s data.battery_life int 1 run scoreboard players get #rc.life mr.data
execute if score #rc.life mr.data matches 0 run playsound minecraft:block.iron_door.close block @a ~ ~ ~ 0.5 0.5
