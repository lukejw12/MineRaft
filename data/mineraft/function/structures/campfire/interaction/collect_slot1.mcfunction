data modify storage mineraft:give item_type set from entity @s data.slot1.output
execute as @a[tag=mr.interacting] run function mineraft:core/give_item
data remove entity @s data.slot1
scoreboard players remove @s mr.campfire_slots 1
playsound minecraft:entity.item.pickup player @a[tag=mr.interacting] ~ ~ ~ 1 1
particle happy_villager ~ ~0.5 ~ 0.2 0.2 0.2 0 10
