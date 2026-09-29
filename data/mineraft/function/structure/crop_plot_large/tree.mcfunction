execute unless data entity @s {data:{state:"full"}} run return run function mineraft:structure/crop_plot_large/tree_hide
execute unless data entity @s data.palm_v run function mineraft:structure/crop_plot_large/palm_roll
scoreboard players operation #pt.id mr.data = @s mr.id
data modify storage mineraft:tmp pt set value {v:0,f:""}
data modify storage mineraft:tmp pt.v set from entity @s data.palm_v
execute if data entity @s {data:{fruit:1b}} run data modify storage mineraft:tmp pt.f set value "_fruiting"
function mineraft:structure/crop_plot_large/tree_model with storage mineraft:tmp pt
