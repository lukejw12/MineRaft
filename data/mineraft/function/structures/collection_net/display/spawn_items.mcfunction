execute if score #display_count mr.data >= @s mr.net_items run return fail

execute store result storage mineraft:net item_index int 1 run scoreboard players get #display_count mr.data
function mineraft:structures/collection_net/display/spawn_one with storage mineraft:net

scoreboard players add #display_count mr.data 1
execute if score #display_count mr.data < @s mr.net_items run function mineraft:structures/collection_net/display/spawn_items