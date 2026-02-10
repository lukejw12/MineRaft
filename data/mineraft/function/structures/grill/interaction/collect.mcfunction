data modify storage mineraft:grill output_item set from entity @s data.output_item
execute as @a[tag=mr.interacting] run function mineraft:structures/grill/interaction/give_output with storage mineraft:grill
data modify entity @s data.state set value "idle"
data remove entity @s data.grill_recipe
data remove entity @s data.output_item
playsound minecraft:entity.item.pickup player @a[tag=mr.interacting] ~ ~ ~ 1 1
particle happy_villager ~ ~0.5 ~ 0.2 0.2 0.2 0 10