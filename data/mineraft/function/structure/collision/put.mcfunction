$execute if score #sp.sailing sp.data matches 1 unless data storage mineraft:grid block."$(x)/$(y)/$(z)" run data modify storage mineraft:grid block."$(x)/$(y)/$(z)" set value {id:$(id),k:"$(k)"}
execute if score #sp.sailing sp.data matches 1 run return 0
$execute if block $(x) $(y) $(z) $(rep) run setblock $(x) $(y) $(z) $(b) strict
$execute if block $(x) $(y) $(z) $(b) run data modify storage mineraft:grid block."$(x)/$(y)/$(z)" set value {id:$(id),k:"$(k)"}
