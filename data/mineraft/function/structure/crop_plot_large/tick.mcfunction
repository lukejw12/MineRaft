execute if data entity @s {data:{state:"sapling_watered"}} run function mineraft:structure/crop_plot_large/grow {next:"mid",ticks:3599}
execute if data entity @s {data:{state:"mid"}} run function mineraft:structure/crop_plot_large/grow {next:"full",ticks:2399}
