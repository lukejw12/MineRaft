data modify storage mineraft:crop_plot crop_plot_type set from entity @s data.crop_plot_type

execute if data entity @s {data:{state:"empty"}} run function mineraft:structures/crop_plot/advanced/large/models/set/empty with storage mineraft:crop_plot

execute unless data entity @s {data:{state:"empty"}} run data modify storage mineraft:crop_plot seed_type set from entity @s data.seed_type

execute if data entity @s {data:{state:"sapling"}} run data modify storage mineraft:crop_plot state set value "sapling"
execute if data entity @s {data:{state:"sapling"}} run function mineraft:structures/crop_plot/advanced/large/models/set/growth with storage mineraft:crop_plot

execute if data entity @s {data:{state:"sapling_watered"}} run function mineraft:structures/crop_plot/advanced/large/models/set/sapling_watered with storage mineraft:crop_plot

execute if data entity @s {data:{state:"mid"}} run data modify storage mineraft:crop_plot state set value "mid"
execute if data entity @s {data:{state:"mid"}} run function mineraft:structures/crop_plot/advanced/large/models/set/growth with storage mineraft:crop_plot

execute if data entity @s {data:{state:"full"}} run data modify storage mineraft:crop_plot state set value "full"
execute if data entity @s {data:{state:"full"}} run function mineraft:structures/crop_plot/advanced/large/models/set/growth with storage mineraft:crop_plot