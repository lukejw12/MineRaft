data modify entity @s data.slot2.recipe set from storage mineraft:campfire recipe
data modify entity @s data.slot2.output set from storage mineraft:grill output_type
execute store result entity @s data.slot2.max int 1 run data get storage mineraft:grill grill_time
data modify entity @s data.slot2.progress set value 0
data modify entity @s data.slot2.done set value 0b
scoreboard players add @s mr.campfire_slots 1
execute as @a[tag=mr.interacting] run item modify entity @s weapon.mainhand mineraft:remove_one
playsound minecraft:block.wood.place block @a[distance=..10] ~ ~ ~ 100 1 1
particle smoke ~ ~0.5 ~ 0.2 0.2 0.2 0.01 10
