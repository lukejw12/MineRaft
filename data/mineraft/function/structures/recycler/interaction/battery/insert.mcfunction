execute store result score #battery_life mr.data run data get entity @a[tag=mr.interacting,limit=1] SelectedItem.components.minecraft:custom_data.battery_life
execute store result entity @s data.battery_life int 1 run scoreboard players get #battery_life mr.data
data modify entity @s data.has_battery set value 1b

execute as @a[tag=mr.interacting] run item modify entity @s weapon.mainhand mineraft:remove_one

playsound minecraft:block.iron_door.close block @a ~ ~ ~ 1 1.5
particle smoke ~ ~0.5 ~ 0.2 0.2 0.2 0.01 5

execute if data entity @s {data:{state:"recycling"}} run function mineraft:structures/recycler/models/active/update
