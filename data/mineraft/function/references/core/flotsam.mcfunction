#/ Specify roll value, item id, item components
execute store result score #flotsam_roll mr.data run random value 1..100
data modify storage mineraft:flotsam item_count set value 1
execute if score #flotsam_roll mr.data matches 1..40 run data modify storage mineraft:flotsam item_id set value "minecraft:green_dye"
execute if score #flotsam_roll mr.data matches 1..40 run data modify storage mineraft:flotsam item_components set value 'item_name:{text:"Palm Leaf"},custom_data:{mr.palm_leaf:1b},item_model:"raft_items:palm_leaf"'
execute if score #flotsam_roll mr.data matches 41..80 run data modify storage mineraft:flotsam item_id set value "minecraft:brown_dye"
execute if score #flotsam_roll mr.data matches 41..80 run data modify storage mineraft:flotsam item_components set value 'item_name:{text:"Wooden Plank"},custom_data:{mr.wooden_plank:1b,mr.fuel:1b},item_model:"raft_items:wooden_plank"'
execute if score #flotsam_roll mr.data matches 81..100 run data modify storage mineraft:flotsam item_id set value "minecraft:light_gray_dye"
execute if score #flotsam_roll mr.data matches 81..100 run data modify storage mineraft:flotsam item_components set value 'item_name:{text:"Plastic"},custom_data:{mr.plastic:1b},item_model:"raft_items:plastic"'