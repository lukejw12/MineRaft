data modify storage mineraft:tmp kw set from storage mineraft:tmp k
scoreboard players operation #sw.t mr.data = #sail.dx mr.data
scoreboard players add #sw.t mr.data 500
scoreboard players operation #sw.t mr.data /= #1000 mr.const
scoreboard players operation #sw.t mr.data += #pl.ax mr.data
execute store result storage mineraft:tmp kw.x int 1 run scoreboard players get #sw.t mr.data
scoreboard players operation #sw.t mr.data = #sail.dz mr.data
scoreboard players add #sw.t mr.data 500
scoreboard players operation #sw.t mr.data /= #1000 mr.const
scoreboard players operation #sw.t mr.data += #pl.az mr.data
execute store result storage mineraft:tmp kw.z int 1 run scoreboard players get #sw.t mr.data
function mineraft:place/check/water_space with storage mineraft:tmp kw
