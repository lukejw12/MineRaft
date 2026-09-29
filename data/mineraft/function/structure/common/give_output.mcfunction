data modify storage mineraft:tmp g set value {count:1}
data modify storage mineraft:tmp g.id set from entity @s data.output_type
execute as @a[tag=mr.interacting,limit=1] run function mineraft:util/give_n with storage mineraft:tmp g
playsound minecraft:entity.item.pickup player @a[tag=mr.interacting] ~ ~ ~ 1 1
particle happy_villager ~ ~0.5 ~ 0.2 0.2 0.2 0 10
