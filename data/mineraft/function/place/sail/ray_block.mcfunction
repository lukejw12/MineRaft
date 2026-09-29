scoreboard players operation #sr.lx mr.data = #sr.bx mr.data
scoreboard players operation #sr.ly mr.data = #sr.by mr.data
scoreboard players operation #sr.lz mr.data = #sr.bz mr.data
data modify storage mineraft:tmp sr set value {}
execute store result storage mineraft:tmp sr.x int 1 run scoreboard players get #sr.bx mr.data
execute store result storage mineraft:tmp sr.y int 1 run scoreboard players get #sr.by mr.data
execute store result storage mineraft:tmp sr.z int 1 run scoreboard players get #sr.bz mr.data
function mineraft:place/sail/ray_check with storage mineraft:tmp sr
