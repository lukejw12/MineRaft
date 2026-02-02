execute if score #loot_index mr.data >= #loot_count mr.data run return fail

execute store result storage mineraft:crop_plot current_index int 1 run scoreboard players get #loot_index mr.data
function mineraft:structures/crop_plot/basic/large/interaction/give_one with storage mineraft:crop_plot

scoreboard players add #loot_index mr.data 1
function mineraft:structures/crop_plot/basic/large/interaction/give_loop