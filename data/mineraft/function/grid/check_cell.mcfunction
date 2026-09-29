$execute unless data storage mineraft:grid floor."$(x)/$(y)/$(z)" run return run scoreboard players set #pl.valid mr.data 0
$execute if data storage mineraft:grid cell."$(x)/$(y)/$(z)" run return run scoreboard players set #pl.valid mr.data 0
execute if score #sp.sailing sp.data matches 1 run function mineraft:place/sail/room with storage mineraft:tmp k
execute if score #sp.sailing sp.data matches 1 run return 0
$execute if score #pl.h mr.data matches 1.. positioned $(x) $(y) $(z) unless block ~ ~1 ~ #mineraft:raft/open run return run scoreboard players set #pl.valid mr.data 0
$execute if score #pl.h mr.data matches 2.. positioned $(x) $(y) $(z) unless block ~ ~2 ~ #mineraft:raft/open run return run scoreboard players set #pl.valid mr.data 0
$execute if score #pl.h mr.data matches 3.. positioned $(x) $(y) $(z) unless block ~ ~3 ~ #mineraft:raft/open run return run scoreboard players set #pl.valid mr.data 0
$execute if score #pl.h mr.data matches 4.. positioned $(x) $(y) $(z) unless block ~ ~4 ~ #mineraft:raft/open run return run scoreboard players set #pl.valid mr.data 0
$execute if score #pl.h mr.data matches 5.. positioned $(x) $(y) $(z) unless block ~ ~5 ~ #mineraft:raft/open run return run scoreboard players set #pl.valid mr.data 0
