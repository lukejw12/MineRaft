data modify storage mineraft:crop_plot crop_plot_type set from entity @s data.crop_plot_type
data modify storage mineraft:crop_plot state set from entity @s data.state

execute if data entity @s {data:{state:"dry"}} run data modify storage mineraft:crop_plot model set value "mineraft:structures/crop_plots/small/empty/basic"
execute if data entity @s {data:{state:"watered"}} run data modify storage mineraft:crop_plot model set value "mineraft:structures/crop_plots/small/empty/basic-watered"

function mineraft:structures/crop_plot/basic/small/models/plot/set with storage mineraft:crop_plot