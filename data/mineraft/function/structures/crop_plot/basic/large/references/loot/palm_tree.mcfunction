execute if score @s mr.crop_plot_hits matches 1 run data modify storage mineraft:crop_plot loot set value [{type:"planks",count:2}]
execute if score @s mr.crop_plot_hits matches 2 run data modify storage mineraft:crop_plot loot set value [{type:"planks",min:1,max:2},{type:"palm_seed",count:1}]
execute if score @s mr.crop_plot_hits matches 3 run data modify storage mineraft:crop_plot loot set value [{type:"planks",count:1}]
execute if score @s mr.crop_plot_hits matches 4 run data modify storage mineraft:crop_plot loot set value [{type:"palm_seed",min:1,max:2}]
execute if score @s mr.crop_plot_hits matches 5 run data modify storage mineraft:crop_plot loot set value [{type:"planks",min:1,max:3}]
#hit1: 1 planks, hit2:2 planks 2 palm seed, hit3: 1 planks, hit4: 2 palm seeds hit5: 3 planks