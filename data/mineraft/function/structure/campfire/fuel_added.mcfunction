scoreboard players operation @s mr.fuel += #fuel mr.data
execute if score @s mr.fuel matches 300.. run scoreboard players set @s mr.fuel 300
playsound minecraft:block.wood.place block @a[distance=..10] ~ ~ ~ 1 1
execute unless score #sp.sailing sp.data matches 1 if block ~ ~ ~ minecraft:campfire run setblock ~ ~ ~ minecraft:campfire[lit=true]
execute if score #sp.sailing sp.data matches 1 run function mineraft:structure/campfire/proxy {lit:"true"}
particle flame ~ ~ ~ 0.2 0.2 0.2 0 10
