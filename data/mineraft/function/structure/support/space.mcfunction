execute if score #sp.sailing sp.data matches 1 run function mineraft:structure/support/space_sail with storage mineraft:tmp k
execute if score #sp.sailing sp.data matches 1 run return 0
$execute positioned $(x) $(y) $(z) unless block ~ ~1 ~ #mineraft:raft/post_space run scoreboard players set #pl.valid mr.data 0
$execute positioned $(x) $(y) $(z) unless block ~ ~2 ~ #mineraft:raft/post_space run scoreboard players set #pl.valid mr.data 0
$execute positioned $(x) $(y) $(z) unless block ~ ~3 ~ #mineraft:raft/post_top run scoreboard players set #pl.valid mr.data 0
