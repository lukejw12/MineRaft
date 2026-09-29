$execute unless data storage mineraft:grid block."$(x)/$(y)/$(z)" run return 0
$execute if data storage mineraft:grid block."$(x)/$(y)/$(z)"{k:"panel"} run return 0
$execute if data storage mineraft:grid block."$(x)/$(y)/$(z)"{k:"water"} run return 0
$execute if data storage mineraft:grid block."$(x)/$(y)/$(z)"{k:"stairs"} run return 0
$execute if data storage mineraft:grid block."$(x)/$(y)/$(z)"{k:"mast"} run return 0
scoreboard players set #ray.kind mr.data 1
$execute if data storage mineraft:grid block."$(x)/$(y)/$(z)"{k:"post"} run scoreboard players set #ray.kind mr.data 2
$execute if data storage mineraft:grid block."$(x)/$(y)/$(z)"{k:"campfire"} run scoreboard players set #ray.kind mr.data 3
