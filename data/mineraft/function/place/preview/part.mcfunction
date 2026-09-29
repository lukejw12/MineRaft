data modify storage mineraft:tmp it set value []
data modify storage mineraft:tmp it append from storage mineraft:tmp pv[0]
data modify storage mineraft:tmp pvp set from storage mineraft:tmp pv[0]
execute unless data storage mineraft:tmp pvp{kind:"shulker"} unless data storage mineraft:tmp pvp{model:"minecraft:air"} run function mineraft:place/preview/ghost
scoreboard players add #pv.i mr.data 1
data remove storage mineraft:tmp pv[0]
execute if data storage mineraft:tmp pv[0] run function mineraft:place/preview/part
