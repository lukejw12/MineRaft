execute store result score #r.x mr.data run data get storage mineraft:tmp fp[0][0]
execute store result score #r.z mr.data run data get storage mineraft:tmp fp[0][1]
scoreboard players operation #r.rot mr.data = #pl.rot mr.data
function mineraft:util/rotate
data modify storage mineraft:tmp k set value {}
scoreboard players operation #k.t mr.data = #pl.ax mr.data
scoreboard players operation #k.t mr.data += #r.ox mr.data
execute store result storage mineraft:tmp k.x int 1 run scoreboard players get #k.t mr.data
execute store result storage mineraft:tmp k.y int 1 run scoreboard players get #pl.ay mr.data
scoreboard players operation #k.t mr.data = #pl.az mr.data
scoreboard players operation #k.t mr.data += #r.oz mr.data
execute store result storage mineraft:tmp k.z int 1 run scoreboard players get #k.t mr.data
execute if score #sp.sailing sp.data matches 1 run function mineraft:place/sail/room_keys
function mineraft:grid/check_cell with storage mineraft:tmp k
data remove storage mineraft:tmp fp[0]
execute if score #pl.valid mr.data matches 1 if data storage mineraft:tmp fp[0] run function mineraft:place/check/footprint_loop
