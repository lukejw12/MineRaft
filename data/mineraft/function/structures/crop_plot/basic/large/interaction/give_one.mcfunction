$data modify storage mineraft:crop_plot loot_type set from storage mineraft:crop_plot loot[$(current_index)].type
$data modify storage mineraft:crop_plot loot_count set from storage mineraft:crop_plot loot[$(current_index)].count

data remove storage mineraft:crop_plot loot_min
data remove storage mineraft:crop_plot loot_max
$data modify storage mineraft:crop_plot loot_min set from storage mineraft:crop_plot loot[$(current_index)].min
$data modify storage mineraft:crop_plot loot_max set from storage mineraft:crop_plot loot[$(current_index)].max

execute if data storage mineraft:crop_plot loot_min if data storage mineraft:crop_plot loot_max run function mineraft:structures/crop_plot/basic/large/interaction/roll_count

function mineraft:structures/crop_plot/basic/large/references/items

execute as @a[sort=nearest,limit=1,distance=..5] run function mineraft:structures/crop_plot/basic/large/interaction/give_loot with storage mineraft:crop_plot