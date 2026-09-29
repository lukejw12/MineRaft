summon item ~ ~0.8 ~ {Item:{id:"minecraft:stone",count:1},PickupDelay:10,Tags:["mr.spill"]}
data modify entity @e[type=item,tag=mr.spill,limit=1,sort=nearest] Item set from storage mineraft:tmp net[0]
tag @e[type=item,tag=mr.spill] remove mr.spill
data remove storage mineraft:tmp net[0]
execute if data storage mineraft:tmp net[0] run function mineraft:structure/collection_net/spill
