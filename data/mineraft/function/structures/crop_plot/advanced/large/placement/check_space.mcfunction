scoreboard players set #can_place mr.data 1

execute positioned ~ ~ ~ unless block ~ ~ ~ #mineraft:platform-override run scoreboard players set #can_place mr.data 0
$execute positioned ~$(offset_x1) ~ ~$(offset_z1) unless block ~ ~ ~ #mineraft:platform-override run scoreboard players set #can_place mr.data 0
$execute positioned ~$(offset_x2) ~ ~$(offset_z2) unless block ~ ~ ~ #mineraft:platform-override run scoreboard players set #can_place mr.data 0
$execute positioned ~$(offset_x3) ~ ~$(offset_z3) unless block ~ ~ ~ #mineraft:platform-override run scoreboard players set #can_place mr.data 0

execute positioned ~ ~1 ~ unless block ~ ~ ~ #mineraft:platform-override run scoreboard players set #can_place mr.data 0
$execute positioned ~$(offset_x1) ~1 ~$(offset_z1) unless block ~ ~ ~ #mineraft:platform-override run scoreboard players set #can_place mr.data 0
$execute positioned ~$(offset_x2) ~1 ~$(offset_z2) unless block ~ ~ ~ #mineraft:platform-override run scoreboard players set #can_place mr.data 0
$execute positioned ~$(offset_x3) ~1 ~$(offset_z3) unless block ~ ~ ~ #mineraft:platform-override run scoreboard players set #can_place mr.data 0

execute positioned ~ ~2 ~ unless block ~ ~ ~ #mineraft:platform-override run scoreboard players set #can_place mr.data 0
$execute positioned ~$(offset_x1) ~2 ~$(offset_z1) unless block ~ ~ ~ #mineraft:platform-override run scoreboard players set #can_place mr.data 0
$execute positioned ~$(offset_x2) ~2 ~$(offset_z2) unless block ~ ~ ~ #mineraft:platform-override run scoreboard players set #can_place mr.data 0
$execute positioned ~$(offset_x3) ~2 ~$(offset_z3) unless block ~ ~ ~ #mineraft:platform-override run scoreboard players set #can_place mr.data 0

execute positioned ~ ~3 ~ unless block ~ ~ ~ #mineraft:platform-override run scoreboard players set #can_place mr.data 0
$execute positioned ~$(offset_x1) ~3 ~$(offset_z1) unless block ~ ~ ~ #mineraft:platform-override run scoreboard players set #can_place mr.data 0
$execute positioned ~$(offset_x2) ~3 ~$(offset_z2) unless block ~ ~ ~ #mineraft:platform-override run scoreboard players set #can_place mr.data 0
$execute positioned ~$(offset_x3) ~3 ~$(offset_z3) unless block ~ ~ ~ #mineraft:platform-override run scoreboard players set #can_place mr.data 0

execute positioned ~ ~4 ~ unless block ~ ~ ~ #mineraft:platform-override run scoreboard players set #can_place mr.data 0
$execute positioned ~$(offset_x1) ~4 ~$(offset_z1) unless block ~ ~ ~ #mineraft:platform-override run scoreboard players set #can_place mr.data 0
$execute positioned ~$(offset_x2) ~4 ~$(offset_z2) unless block ~ ~ ~ #mineraft:platform-override run scoreboard players set #can_place mr.data 0
$execute positioned ~$(offset_x3) ~4 ~$(offset_z3) unless block ~ ~ ~ #mineraft:platform-override run scoreboard players set #can_place mr.data 0

execute if score #can_place mr.data matches 0 run return fail

execute positioned ~ ~2.5 ~ if entity @e[type=interaction,tag=mr.smeltery_interaction,distance=..2.5] run return fail
execute positioned ~ ~2.5 ~ if entity @e[type=interaction,tag=mr.purifier_interaction,distance=..2.5] run return fail
execute positioned ~ ~2.5 ~ if entity @e[type=interaction,tag=mr.crop_plot_interaction,distance=..2.5] run return fail

function mineraft:structures/crop_plot/advanced/large/spawn/spawn with storage mineraft:crop_plot