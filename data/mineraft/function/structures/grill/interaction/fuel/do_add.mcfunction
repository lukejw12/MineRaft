scoreboard players operation @s mr.grill_fuel += #fuel_value mr.data
playsound minecraft:block.wood.place block @a[distance=..10] ~ ~ ~ 100 1 1
function mineraft:structures/grill/models/fuel/update
execute as @a[tag=mr.interacting] run item modify entity @s weapon.mainhand mineraft:remove_one
particle flame ~ ~ ~ 0.2 0.2 0.2 0 10