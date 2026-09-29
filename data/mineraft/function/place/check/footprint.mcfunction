scoreboard players set #pl.valid mr.data 1
execute store result score #pl.h mr.data run data get storage mineraft:tmp pl.def.h
data modify storage mineraft:tmp fp set from storage mineraft:tmp pl.def.footprint
execute if data storage mineraft:tmp fp[0] run function mineraft:place/check/footprint_loop
