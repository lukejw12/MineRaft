data modify storage mineraft:tmp k set value {}
execute store result storage mineraft:tmp k.x int 1 run scoreboard players get #ray.bx mr.data
execute store result storage mineraft:tmp k.z int 1 run scoreboard players get #ray.bz mr.data
scoreboard players operation #k.t mr.data = #ray.by mr.data
execute store result storage mineraft:tmp k.y1 int 1 run scoreboard players remove #k.t mr.data 1
execute store result storage mineraft:tmp k.y2 int 1 run scoreboard players remove #k.t mr.data 1
execute store result storage mineraft:tmp k.y3 int 1 run scoreboard players remove #k.t mr.data 1
function mineraft:place/find_support_at with storage mineraft:tmp k
