scoreboard players set #sup.found mr.data 1
scoreboard players operation #sup.y mr.data = #ray.by mr.data
scoreboard players remove #sup.y mr.data 1
$execute if data storage mineraft:grid cell."$(x)/$(y1)/$(z)"{t:"support"} run return 1
scoreboard players remove #sup.y mr.data 1
$execute if data storage mineraft:grid cell."$(x)/$(y2)/$(z)"{t:"support"} run return 1
scoreboard players remove #sup.y mr.data 1
$execute if data storage mineraft:grid cell."$(x)/$(y3)/$(z)"{t:"support"} run return 1
scoreboard players set #sup.found mr.data 0
