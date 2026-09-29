data modify storage mineraft:tmp g set value {count:1}
data modify storage mineraft:tmp g.id set from storage mineraft:tmp loot[0].id
data modify storage mineraft:tmp g.count set from storage mineraft:tmp loot[0].count
execute if data storage mineraft:tmp loot[0].max run function mineraft:structure/common/roll with storage mineraft:tmp loot[0]
function mineraft:util/give_n with storage mineraft:tmp g
data remove storage mineraft:tmp loot[0]
execute if data storage mineraft:tmp loot[0] run function mineraft:structure/common/give_loot
