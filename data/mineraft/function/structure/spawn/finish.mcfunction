data modify entity @s data.mr set value {claims:[],blocks:[]}
data modify entity @s data.mr.type set from storage mineraft:tmp pl.type
data modify entity @s data.mr.variant set from storage mineraft:tmp pl.variant
execute store result entity @s data.mr.rot int 1 run scoreboard players get #pl.rot mr.data
data modify entity @s data.mr.item set from storage mineraft:tmp pl.stack
function mineraft:structure/spawn/type_tag with storage mineraft:tmp pl
data modify entity @s Tags append from storage mineraft:tmp pl.def.tags[]
execute if data storage mineraft:tmp pl.def{floorlike:1b} run tag @s add mr.floorlike
execute if data storage mineraft:tmp pl.def.hooks.tick run tag @s add mr.ticking
execute if data storage mineraft:tmp pl.def.hooks.tick run data modify entity @s data.mr.tick set from storage mineraft:tmp pl.def.hooks.tick
function mineraft:structure/claim/root_block
function mineraft:structure/claim/from_def
function mineraft:structure/collision/record_from_def
function mineraft:structure/hook/run {h:"collision"}
function mineraft:structure/collision/apply
function mineraft:structure/hook/run {h:"spawn"}
execute if score #sp.sailing sp.data matches 1 run function mineraft:structure/hook/run {h:"sail_enter"}
