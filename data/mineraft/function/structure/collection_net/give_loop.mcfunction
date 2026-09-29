data modify storage mineraft:tmp g set value {count:1}
data modify storage mineraft:tmp g.id set from storage mineraft:tmp net[0]
execute if data storage mineraft:tmp g{id:"barrel"} run function mineraft:world/flotsam/barrel/collect_from_net
execute unless data storage mineraft:tmp g{id:"barrel"} run function mineraft:util/give_n with storage mineraft:tmp g
data remove storage mineraft:tmp net[0]
execute if data storage mineraft:tmp net[0] run function mineraft:structure/collection_net/give_loop
