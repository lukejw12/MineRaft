scoreboard players set #can_place mr.data 1

execute positioned ~-1 ~ ~-1 unless block ~ ~ ~ #mineraft:platform-override run scoreboard players set #can_place mr.data 0
execute positioned ~-1 ~ ~ unless block ~ ~ ~ #mineraft:platform-override run scoreboard players set #can_place mr.data 0
execute positioned ~-1 ~ ~1 unless block ~ ~ ~ #mineraft:platform-override run scoreboard players set #can_place mr.data 0
execute positioned ~ ~ ~-1 unless block ~ ~ ~ #mineraft:platform-override run scoreboard players set #can_place mr.data 0
execute positioned ~ ~ ~ unless block ~ ~ ~ #mineraft:platform-override run scoreboard players set #can_place mr.data 0
execute positioned ~ ~ ~1 unless block ~ ~ ~ #mineraft:platform-override run scoreboard players set #can_place mr.data 0
execute positioned ~1 ~ ~-1 unless block ~ ~ ~ #mineraft:platform-override run scoreboard players set #can_place mr.data 0
execute positioned ~1 ~ ~ unless block ~ ~ ~ #mineraft:platform-override run scoreboard players set #can_place mr.data 0
execute positioned ~1 ~ ~1 unless block ~ ~ ~ #mineraft:platform-override run scoreboard players set #can_place mr.data 0

execute positioned ~-1 ~1 ~-1 unless block ~ ~ ~ #mineraft:platform-override run scoreboard players set #can_place mr.data 0
execute positioned ~-1 ~1 ~ unless block ~ ~ ~ #mineraft:platform-override run scoreboard players set #can_place mr.data 0
execute positioned ~-1 ~1 ~1 unless block ~ ~ ~ #mineraft:platform-override run scoreboard players set #can_place mr.data 0
execute positioned ~ ~1 ~-1 unless block ~ ~ ~ #mineraft:platform-override run scoreboard players set #can_place mr.data 0
execute positioned ~ ~1 ~ unless block ~ ~ ~ #mineraft:platform-override run scoreboard players set #can_place mr.data 0
execute positioned ~ ~1 ~1 unless block ~ ~ ~ #mineraft:platform-override run scoreboard players set #can_place mr.data 0
execute positioned ~1 ~1 ~-1 unless block ~ ~ ~ #mineraft:platform-override run scoreboard players set #can_place mr.data 0
execute positioned ~1 ~1 ~ unless block ~ ~ ~ #mineraft:platform-override run scoreboard players set #can_place mr.data 0
execute positioned ~1 ~1 ~1 unless block ~ ~ ~ #mineraft:platform-override run scoreboard players set #can_place mr.data 0

execute positioned ~-1 ~2 ~-1 unless block ~ ~ ~ #mineraft:platform-override run scoreboard players set #can_place mr.data 0
execute positioned ~-1 ~2 ~ unless block ~ ~ ~ #mineraft:platform-override run scoreboard players set #can_place mr.data 0
execute positioned ~-1 ~2 ~1 unless block ~ ~ ~ #mineraft:platform-override run scoreboard players set #can_place mr.data 0
execute positioned ~ ~2 ~-1 unless block ~ ~ ~ #mineraft:platform-override run scoreboard players set #can_place mr.data 0
execute positioned ~ ~2 ~ unless block ~ ~ ~ #mineraft:platform-override run scoreboard players set #can_place mr.data 0
execute positioned ~ ~2 ~1 unless block ~ ~ ~ #mineraft:platform-override run scoreboard players set #can_place mr.data 0
execute positioned ~1 ~2 ~-1 unless block ~ ~ ~ #mineraft:platform-override run scoreboard players set #can_place mr.data 0
execute positioned ~1 ~2 ~ unless block ~ ~ ~ #mineraft:platform-override run scoreboard players set #can_place mr.data 0
execute positioned ~1 ~2 ~1 unless block ~ ~ ~ #mineraft:platform-override run scoreboard players set #can_place mr.data 0

execute positioned ~-1 ~3 ~-1 unless block ~ ~ ~ #mineraft:platform-override run scoreboard players set #can_place mr.data 0
execute positioned ~-1 ~3 ~ unless block ~ ~ ~ #mineraft:platform-override run scoreboard players set #can_place mr.data 0
execute positioned ~-1 ~3 ~1 unless block ~ ~ ~ #mineraft:platform-override run scoreboard players set #can_place mr.data 0
execute positioned ~ ~3 ~-1 unless block ~ ~ ~ #mineraft:platform-override run scoreboard players set #can_place mr.data 0
execute positioned ~ ~3 ~ unless block ~ ~ ~ #mineraft:platform-override run scoreboard players set #can_place mr.data 0
execute positioned ~ ~3 ~1 unless block ~ ~ ~ #mineraft:platform-override run scoreboard players set #can_place mr.data 0
execute positioned ~1 ~3 ~-1 unless block ~ ~ ~ #mineraft:platform-override run scoreboard players set #can_place mr.data 0
execute positioned ~1 ~3 ~ unless block ~ ~ ~ #mineraft:platform-override run scoreboard players set #can_place mr.data 0
execute positioned ~1 ~3 ~1 unless block ~ ~ ~ #mineraft:platform-override run scoreboard players set #can_place mr.data 0

execute positioned ~-1 ~4 ~-1 unless block ~ ~ ~ #mineraft:platform-override run scoreboard players set #can_place mr.data 0
execute positioned ~-1 ~4 ~ unless block ~ ~ ~ #mineraft:platform-override run scoreboard players set #can_place mr.data 0
execute positioned ~-1 ~4 ~1 unless block ~ ~ ~ #mineraft:platform-override run scoreboard players set #can_place mr.data 0
execute positioned ~ ~4 ~-1 unless block ~ ~ ~ #mineraft:platform-override run scoreboard players set #can_place mr.data 0
execute positioned ~ ~4 ~ unless block ~ ~ ~ #mineraft:platform-override run scoreboard players set #can_place mr.data 0
execute positioned ~ ~4 ~1 unless block ~ ~ ~ #mineraft:platform-override run scoreboard players set #can_place mr.data 0
execute positioned ~1 ~4 ~-1 unless block ~ ~ ~ #mineraft:platform-override run scoreboard players set #can_place mr.data 0
execute positioned ~1 ~4 ~ unless block ~ ~ ~ #mineraft:platform-override run scoreboard players set #can_place mr.data 0
execute positioned ~1 ~4 ~1 unless block ~ ~ ~ #mineraft:platform-override run scoreboard players set #can_place mr.data 0

execute if score #can_place mr.data matches 0 run return fail

execute positioned ~ ~2.5 ~ if entity @e[type=interaction,tag=mr.smeltery_interaction,distance=..2.5] run return fail
execute positioned ~ ~2.5 ~ if entity @e[type=interaction,tag=mr.purifier_interaction,distance=..2.5] run return fail
execute positioned ~ ~2.5 ~ if entity @e[type=interaction,tag=mr.crop_plot_interaction,distance=..2.5] run return fail

function mineraft:structures/crop_plot/basic/large/spawn/spawn