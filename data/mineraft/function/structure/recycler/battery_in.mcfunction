execute store result entity @s data.battery_life int 1 run data get entity @a[tag=mr.interacting,limit=1] SelectedItem.components."minecraft:custom_data".battery_life
data modify entity @s data.has_battery set value 1b
item modify entity @a[tag=mr.interacting,limit=1] weapon.mainhand mineraft:remove_one
playsound minecraft:block.iron_door.close block @a ~ ~ ~ 1 1.5
particle smoke ~ ~0.5 ~ 0.2 0.2 0.2 0.01 5
execute if data entity @s {data:{state:"recycling"}} run function mineraft:structure/recycler/model/active with entity @s data
