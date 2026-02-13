data modify storage mineraft:crop_plot give set value "give @s stone[item_name=\"this is a fallback! please report this as a bug!\"] 1"

execute if data storage mineraft:crop_plot {loot_type:"planks"} run function mineraft:references/structures/crop_plot/large/items/planks with storage mineraft:crop_plot
execute if data storage mineraft:crop_plot {loot_type:"palm_seed"} run function mineraft:references/structures/crop_plot/large/items/palm_seed with storage mineraft:crop_plot
execute if data storage mineraft:crop_plot {loot_type:"palm_leaf"} run function mineraft:references/structures/crop_plot/large/items/palm_leaf with storage mineraft:crop_plot