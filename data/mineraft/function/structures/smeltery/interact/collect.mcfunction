data modify storage mineraft:give item_type set from entity @s data.output_type

execute as @a[tag=mr.interacting] run function mineraft:core/give_item

data modify entity @s data.state set value "idle"
data remove entity @s data.smelt_type
data remove entity @s data.output_type

function mineraft:structures/smeltery/model/update_model_idle

playsound minecraft:entity.item.pickup player @a[tag=mr.interacting] ~ ~ ~ 1 1
particle happy_villager ~ ~0.5 ~ 0.2 0.2 0.2 0 10