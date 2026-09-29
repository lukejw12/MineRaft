execute if score #sp.sailing sp.data matches 1 run function mineraft:place/sail/platform_space with storage mineraft:tmp k
$execute unless score #sp.sailing sp.data matches 1 positioned $(x) $(y) $(z) unless block ~-1 ~ ~-1 #mineraft:raft/platform_space run scoreboard players set #pl.valid mr.data 0
$execute unless score #sp.sailing sp.data matches 1 positioned $(x) $(y) $(z) unless block ~ ~ ~-1 #mineraft:raft/platform_space run scoreboard players set #pl.valid mr.data 0
$execute unless score #sp.sailing sp.data matches 1 positioned $(x) $(y) $(z) unless block ~1 ~ ~-1 #mineraft:raft/platform_space run scoreboard players set #pl.valid mr.data 0
$execute unless score #sp.sailing sp.data matches 1 positioned $(x) $(y) $(z) unless block ~-1 ~ ~ #mineraft:raft/platform_space run scoreboard players set #pl.valid mr.data 0
$execute unless score #sp.sailing sp.data matches 1 positioned $(x) $(y) $(z) unless block ~ ~ ~ #mineraft:raft/platform_space run scoreboard players set #pl.valid mr.data 0
$execute unless score #sp.sailing sp.data matches 1 positioned $(x) $(y) $(z) unless block ~1 ~ ~ #mineraft:raft/platform_space run scoreboard players set #pl.valid mr.data 0
$execute unless score #sp.sailing sp.data matches 1 positioned $(x) $(y) $(z) unless block ~-1 ~ ~1 #mineraft:raft/platform_space run scoreboard players set #pl.valid mr.data 0
$execute unless score #sp.sailing sp.data matches 1 positioned $(x) $(y) $(z) unless block ~ ~ ~1 #mineraft:raft/platform_space run scoreboard players set #pl.valid mr.data 0
$execute unless score #sp.sailing sp.data matches 1 positioned $(x) $(y) $(z) unless block ~1 ~ ~1 #mineraft:raft/platform_space run scoreboard players set #pl.valid mr.data 0
$execute store result score #k.h mr.data run data get storage mineraft:grid cell."$(xm)/$(ym3)/$(zm)".h
execute if score #k.h mr.data matches 4.. run scoreboard players set #pl.valid mr.data 0
$execute store result score #k.h mr.data run data get storage mineraft:grid cell."$(x)/$(ym3)/$(zm)".h
execute if score #k.h mr.data matches 4.. run scoreboard players set #pl.valid mr.data 0
$execute store result score #k.h mr.data run data get storage mineraft:grid cell."$(xp)/$(ym3)/$(zm)".h
execute if score #k.h mr.data matches 4.. run scoreboard players set #pl.valid mr.data 0
$execute store result score #k.h mr.data run data get storage mineraft:grid cell."$(xm)/$(ym3)/$(z)".h
execute if score #k.h mr.data matches 4.. run scoreboard players set #pl.valid mr.data 0
$execute store result score #k.h mr.data run data get storage mineraft:grid cell."$(x)/$(ym3)/$(z)".h
execute if score #k.h mr.data matches 4.. run scoreboard players set #pl.valid mr.data 0
$execute store result score #k.h mr.data run data get storage mineraft:grid cell."$(xp)/$(ym3)/$(z)".h
execute if score #k.h mr.data matches 4.. run scoreboard players set #pl.valid mr.data 0
$execute store result score #k.h mr.data run data get storage mineraft:grid cell."$(xm)/$(ym3)/$(zp)".h
execute if score #k.h mr.data matches 4.. run scoreboard players set #pl.valid mr.data 0
$execute store result score #k.h mr.data run data get storage mineraft:grid cell."$(x)/$(ym3)/$(zp)".h
execute if score #k.h mr.data matches 4.. run scoreboard players set #pl.valid mr.data 0
$execute store result score #k.h mr.data run data get storage mineraft:grid cell."$(xp)/$(ym3)/$(zp)".h
execute if score #k.h mr.data matches 4.. run scoreboard players set #pl.valid mr.data 0
