$data modify storage mineraft:crop_plot loot_type set from storage mineraft:crop_plot loot[$(current_index)].type
$data modify storage mineraft:crop_plot loot_count set from storage mineraft:crop_plot loot[$(current_index)].count

data remove storage mineraft:crop_plot loot_min
data remove storage mineraft:crop_plot loot_max
$data modify storage mineraft:crop_plot loot_min set from storage mineraft:crop_plot loot[$(current_index)].min
$data modify storage mineraft:crop_plot loot_max set from storage mineraft:crop_plot loot[$(current_index)].max

execute if data storage mineraft:crop_plot loot_min if data storage mineraft:crop_plot loot_max run function mineraft:structures/crop_plot/shared/large/interaction/roll_count

data modify storage mineraft:give item_type set from storage mineraft:crop_plot loot_type
execute store result storage mineraft:give count int 1 run data get storage mineraft:crop_plot loot_count
execute as @a[sort=nearest,limit=1,distance=..5] run function mineraft:core/give_item_loop
