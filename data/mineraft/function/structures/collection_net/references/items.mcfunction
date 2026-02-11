data modify storage mineraft:net give set value "give @s stone"

execute if data storage mineraft:net {flotsam_type:"palm_leaf"} run data modify storage mineraft:net give set value "give @s minecraft:green_dye[item_name='Palm Leaf',custom_data={mr.palm_leaf:1b},item_model='mineraft:items/flotsam/palm_leaf']"
execute if data storage mineraft:net {flotsam_type:"wooden_plank"} run data modify storage mineraft:net give set value "give @s minecraft:brown_dye[item_name='Wooden Plank',custom_data={mr.wooden_plank:1b,mr.fuel:1b},item_model='mineraft:items/flotsam/wooden_plank']"