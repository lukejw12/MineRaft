gamerule doMobSpawning false
gamerule doWeatherCycle false
gamerule commandModificationBlockLimit 500000
forceload add ~120 ~120 ~-120 ~-120
fill ~122 -60 ~122 ~-122 -64 ~-122 stone
fill ~120 -63 ~120 ~-120 -62 ~-120 air

forceload remove all
gamerule commandModificationBlockLimit 32768
data merge storage minecraft:temp {AllItems:[]}
execute unless entity @e[tag=shark] at @s at @e[tag=central_raft] at @s run summon dolphin ~ 62 ~ {PersistenceRequired:1b,Silent:1b,CustomNameVisible:0b,Health:180f,GotFish:0b,Tags:["shark"],CustomName:'{"color":"aqua","text":"Shark"}',attributes:[{id:"minecraft:max_health",base:180},{id:"minecraft:scale",base:1.5}]}
execute positioned ~ 61 ~ unless entity @e[type=marker,tag=shark_facing,distance=..5] run summon marker ~ 61 ~ {Tags:["shark_facing"]}
execute unless entity @e[type=marker,tag=shark_target] run summon marker ~ 0 ~ {Tags:["shark_target"]}
