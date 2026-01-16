data modify storage mineraft:smeltery output_item set from entity @s data.output_item

execute as @a[tag=mr.interacting] run function mineraft:structures/smeltery/interact/give_output with storage mineraft:smeltery

data modify entity @s data.state set value "idle"
data remove entity @s data.smelt_type
data remove entity @s data.output_item

function mineraft:structures/smeltery/model/update_model_idle

playsound minecraft:entity.item.pickup player @a[tag=mr.interacting] ~ ~ ~ 1 1
particle happy_villager ~ ~0.5 ~ 0.2 0.2 0.2 0 10