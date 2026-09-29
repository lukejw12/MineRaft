execute if items entity @a[tag=mr.interacting,limit=1] weapon.mainhand *[custom_data~{mr.seed:1b}] run return run function mineraft:structure/crop_plot/plant
execute if items entity @a[tag=mr.interacting,limit=1] weapon.mainhand *[custom_data~{mr.filled_cup:1b,mr.water_type:"freshwater"}] run return run function mineraft:structure/crop_plot/water
function mineraft:structure/crop_plot/harvest
