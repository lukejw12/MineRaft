$execute unless data storage mineraft:grid block."$(x)/$(y)/$(z)"{id:$(id)} run return fail
$execute if score #sp.sailing sp.data matches 1 run data remove storage mineraft:grid block."$(x)/$(y)/$(z)"
execute if score #sp.sailing sp.data matches 1 run return 0
$setblock $(x) $(y) $(z) $(r) strict
$data remove storage mineraft:grid block."$(x)/$(y)/$(z)"
