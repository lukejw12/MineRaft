function mineraft:structure/spawn/yaw
scoreboard players operation #pv.link mr.data = @s mr.link
scoreboard players set #pv.i mr.data 0
data modify storage mineraft:tmp pv set from storage mineraft:tmp pl.def.parts
execute if data storage mineraft:tmp pv[0] run function mineraft:place/preview/part
tag @s add mr.has_preview
