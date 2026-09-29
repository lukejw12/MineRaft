function mineraft:structure/collision/abs
function mineraft:structure/collision/take with storage mineraft:tmp b
data remove storage mineraft:tmp ap[0]
execute if data storage mineraft:tmp ap[0] run function mineraft:structure/collision/remove_loop
