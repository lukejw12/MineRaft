scoreboard players operation @s mr.smeltery_fuel += #fuel_value mr.data
playsound minecraft:block.wood.place block @a[distance=..10] ~ ~ ~ 100 1 1
execute if data entity @s {data:{state:"smelting"}} if score @s mr.smeltery_fuel matches 1.. run function mineraft:structures/smeltery/model/update_model_active

function mineraft:structures/smeltery/model/update_fuel_display

execute as @a[tag=mr.interacting] run item modify entity @s weapon.mainhand mineraft:remove_one

particle flame ~ ~ ~ 0.2 0.2 0.2 0 10