scoreboard players operation @s mr.campfire_fuel += #fuel_value mr.data
execute if score @s mr.campfire_fuel matches 300.. run scoreboard players set @s mr.campfire_fuel 300
playsound minecraft:block.wood.place block @a[distance=..10] ~ ~ ~ 100 1 1
execute as @a[tag=mr.interacting] run item modify entity @s weapon.mainhand mineraft:remove_one
execute at @s run setblock ~ ~ ~ campfire[lit=true]
particle flame ~ ~ ~ 0.2 0.2 0.2 0 10
