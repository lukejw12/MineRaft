$loot spawn ~ ~$(h) ~ loot mineraft:item/coconut
scoreboard players remove #pt.n mr.data 1
$execute if score #pt.n mr.data matches 1.. run function mineraft:structure/crop_plot_large/drop_coconuts {h:$(h)}
