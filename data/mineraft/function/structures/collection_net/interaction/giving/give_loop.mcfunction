
execute if score #give_index mr.data >= #give_count mr.data run return fail
execute store result storage mineraft:net current_index int 1 run scoreboard players get #give_index mr.data
function mineraft:structures/collection_net/interaction/giving/give_one with storage mineraft:net
scoreboard players add #give_index mr.data 1
execute if score #give_index mr.data < #give_count mr.data run function mineraft:structures/collection_net/interaction/giving/give_loop with storage mineraft:net