execute store result score #flotsam_roll mr.data run random value 1..100
data modify storage mineraft:flotsam item_count set value 1
execute if score #flotsam_roll mr.data matches 1..40 run data modify storage mineraft:flotsam item_id set value "minecraft:green_dye"
execute if score #flotsam_roll mr.data matches 1..40 run data modify storage mineraft:flotsam item_components set value 'item_name:{text:"Palm Leaf"},custom_data:{mr.palm_leaf:1b},item_model:"mineraft:items/flotsam/palm_leaf"'
execute if score #flotsam_roll mr.data matches 41..100 run data modify storage mineraft:flotsam item_id set value "minecraft:brown_dye"
execute if score #flotsam_roll mr.data matches 41..100 run data modify storage mineraft:flotsam item_components set value 'item_name:{text:"Wooden Plank"},custom_data:{mr.wooden_plank:1b,mr.fuel:1b},item_model:"mineraft:items/flotsam/wooden_plank"'
