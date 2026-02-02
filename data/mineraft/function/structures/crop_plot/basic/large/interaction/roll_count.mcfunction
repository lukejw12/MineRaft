execute store result score #loot_min mr.data run data get storage mineraft:crop_plot loot_min
execute store result score #loot_max mr.data run data get storage mineraft:crop_plot loot_max

execute store result storage mineraft:crop_plot loot_min int 1 run scoreboard players get #loot_min mr.data
execute store result storage mineraft:crop_plot loot_max int 1 run scoreboard players get #loot_max mr.data

function mineraft:structures/crop_plot/basic/large/interaction/roll_count_macro with storage mineraft:crop_plot