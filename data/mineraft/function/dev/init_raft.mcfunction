scoreboard players set #raft_init mr.data 1
$scoreboard players set #pl.ax mr.data $(x)
$scoreboard players set #pl.az mr.data $(z)
scoreboard players set #pl.ay mr.data 62
scoreboard players set #pl.rot mr.data 0
scoreboard players operation #grid.ox mr.data = #pl.ax mr.data
scoreboard players operation #grid.oz mr.data = #pl.az mr.data
data remove storage mineraft:tmp pl
function mineraft:place/load_def {type:"foundation",variant:"basic"}
function mineraft:structure/spawn/start
