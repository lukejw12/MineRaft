tp @s ~ 62 ~ facing entity @e[tag=valid_shark_chomp,limit=1,sort=nearest] eyes
schedule function mineraft:shark/attacking_raft_sound 13t append
execute if block ~ ~2 ~ #raft_materials if block ~ ~2 ~3 #minecraft:raft_replacable run tp @s ~ ~2 ~3