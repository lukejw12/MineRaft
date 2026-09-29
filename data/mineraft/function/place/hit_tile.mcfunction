scoreboard players operation #t.bx mr.data = #ray.bx mr.data
scoreboard players operation #t.bz mr.data = #ray.bz mr.data
function mineraft:util/tile_center
data modify storage mineraft:tmp k set value {}
execute store result storage mineraft:tmp k.x int 1 run scoreboard players get #t.cx mr.data
execute store result storage mineraft:tmp k.y int 1 run scoreboard players get #ray.by mr.data
execute store result storage mineraft:tmp k.z int 1 run scoreboard players get #t.cz mr.data
