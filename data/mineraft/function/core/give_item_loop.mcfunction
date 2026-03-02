execute if data storage mineraft:give {count:0} run return fail
function mineraft:core/give_item
execute store result score #give_remaining mr.data run data get storage mineraft:give count
scoreboard players remove #give_remaining mr.data 1
execute store result storage mineraft:give count int 1 run scoreboard players get #give_remaining mr.data
execute if score #give_remaining mr.data matches 1.. run function mineraft:core/give_item_loop