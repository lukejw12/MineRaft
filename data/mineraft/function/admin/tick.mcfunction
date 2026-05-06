scoreboard players enable @a mr.admin_open
scoreboard players enable @a mr.admin
execute as @a[scores={mr.admin_open=1..}] run dialog show @s mineraft:admin/main
scoreboard players reset @a[scores={mr.admin_open=1..}] mr.admin_open

execute as @a[scores={mr.admin=1}] run give @s poisonous_potato[item_name={"bold":false,"italic":false,"translate":"structure.mineraft.basic_foundation","fallback":"Basic Foundation"},!food,consumable={consume_seconds:9999,animation:"block",sound:"intentionally_empty",has_consume_particles:false,on_consume_effects:[{type:"minecraft:play_sound",sound:"intentionally_empty"}]},custom_data={mr.foundation:1b,mr.foundation_type:"basic_foundation"},item_model="raft_items:structure/basic/foundation"]

execute as @a[scores={mr.admin=2}] run give @s poisonous_potato[item_name={"bold":false,"italic":false,"translate":"structure.mineraft.advanced_foundation","fallback":"Advanced Foundation"},!food,consumable={consume_seconds:9999,animation:"block",sound:"intentionally_empty",has_consume_particles:false,on_consume_effects:[{type:"minecraft:play_sound",sound:"intentionally_empty"}]},custom_data={mr.foundation:1b,mr.foundation_type:"advanced_foundation"},item_model="raft_items:structure/solid/foundation"]

execute as @a[scores={mr.admin=3}] run give @s poisonous_potato[item_name={"bold":false,"italic":false,"translate":"structure.mineraft.wooden_wall","fallback":"Wooden Wall"},!food,consumable={consume_seconds:9999,animation:"block",sound:"intentionally_empty",has_consume_particles:false,on_consume_effects:[{type:"minecraft:play_sound",sound:"intentionally_empty"}]},custom_data={mr.wall:1b,mr.wall_type:"wooden"},item_model="raft_items:structure/basic/wooden_wall"]

execute as @a[scores={mr.admin=4}] run give @s poisonous_potato[item_name={"bold":false,"italic":false,"translate":"structure.mineraft.solid_wooden_wall","fallback":"Solid Wooden Wall"},!food,consumable={consume_seconds:9999,animation:"block",sound:"intentionally_empty",has_consume_particles:false,on_consume_effects:[{type:"minecraft:play_sound",sound:"intentionally_empty"}]},custom_data={mr.wall:1b,mr.wall_type:"solid_wooden"},item_model="raft_items:structure/solid/wooden_wall"]

execute as @a[scores={mr.admin=5}] run give @s poisonous_potato[item_name={"bold":false,"italic":false,"translate":"structure.mineraft.wooden_platform","fallback":"Wooden Platform"},!food,consumable={consume_seconds:9999,animation:"block",sound:"intentionally_empty",has_consume_particles:false,on_consume_effects:[{type:"minecraft:play_sound",sound:"intentionally_empty"}]},custom_data={mr.platform:1b,mr.platform_type:"wooden_platform"},item_model="raft_items:structure/basic/wooden_platform"]

execute as @a[scores={mr.admin=6}] run give @s poisonous_potato[item_name={"bold":false,"italic":false,"translate":"structure.mineraft.solid_wooden_platform","fallback":"Solid Wooden Platform"},!food,consumable={consume_seconds:9999,animation:"block",sound:"intentionally_empty",has_consume_particles:false,on_consume_effects:[{type:"minecraft:play_sound",sound:"intentionally_empty"}]},custom_data={mr.platform:1b,mr.platform_type:"solid_wooden_platform"},item_model="raft_items:structure/solid/wooden_platform"]

execute as @a[scores={mr.admin=7}] run give @s poisonous_potato[item_name={"bold":false,"italic":false,"translate":"structure.mineraft.wooden_stairs","fallback":"Wooden Stairs"},!food,consumable={consume_seconds:9999,animation:"block",sound:"intentionally_empty",has_consume_particles:false,on_consume_effects:[{type:"minecraft:play_sound",sound:"intentionally_empty"}]},custom_data={mr.stairs:1b,mr.stairs_type:"wooden_stairs"},item_model="raft_items:structure/basic/wooden_stairs"]

execute as @a[scores={mr.admin=8}] run give @s poisonous_potato[item_name={"bold":false,"italic":false,"translate":"structure.mineraft.solid_wooden_stairs","fallback":"Solid Wooden Stairs"},!food,consumable={consume_seconds:9999,animation:"block",sound:"intentionally_empty",has_consume_particles:false,on_consume_effects:[{type:"minecraft:play_sound",sound:"intentionally_empty"}]},custom_data={mr.stairs:1b,mr.stairs_type:"solid_wooden_stairs"},item_model="mineraft:items/structures/stairs/solid_wooden_stairs"]

execute as @a[scores={mr.admin=9}] run give @s poisonous_potato[item_name={"bold":false,"italic":false,"translate":"structure.mineraft.wooden_support","fallback":"Wooden Support"},!food,consumable={consume_seconds:9999,animation:"block",sound:"intentionally_empty",has_consume_particles:false,on_consume_effects:[{type:"minecraft:play_sound",sound:"intentionally_empty"}]},custom_data={mr.support:1b,mr.support_type:"wooden_support"},item_model="raft_items:structure/basic/wooden_pillar"]

execute as @a[scores={mr.admin=10}] run give @s poisonous_potato[item_name={"bold":false,"italic":false,"translate":"structure.mineraft.solid_wooden_support","fallback":"Solid Wooden Support"},!food,consumable={consume_seconds:9999,animation:"block",sound:"intentionally_empty",has_consume_particles:false,on_consume_effects:[{type:"minecraft:play_sound",sound:"intentionally_empty"}]},custom_data={mr.support:1b,mr.support_type:"solid_wooden_support"},item_model="raft_items:structure/solid/wooden_pillar"]

execute as @a[scores={mr.admin=11}] run give @s poisonous_potato[item_name={"bold":false,"italic":false,"translate":"structure.mineraft.foundation_armor","fallback":"Foundation Armor"},!food,consumable={consume_seconds:9999,animation:"block",sound:"intentionally_empty",has_consume_particles:false,on_consume_effects:[{type:"minecraft:play_sound",sound:"intentionally_empty"}]},custom_data={mr.foundation_armor:1b},item_model="raft_items:structures/armor/foundation"]

execute as @a[scores={mr.admin=12}] run give @s poisonous_potato[item_name={"italic":false,"bold":false,"translate":"structure.mineraft.basic_small_crop_plot","fallback":"Basic Small Crop Plot"},!food,consumable={consume_seconds:9999,animation:"block",sound:"intentionally_empty",has_consume_particles:false,on_consume_effects:[{type:"minecraft:play_sound",sound:"intentionally_empty"}]},custom_data={mr.crop_plot:1b,mr.crop_plot_type:"basic_small_crop_plot"},item_model="mineraft:items/structures/crop_plot/basic_small_crop_plot"]

execute as @a[scores={mr.admin=13}] run give @s poisonous_potato[item_name={"italic":false,"bold":false,"translate":"structure.mineraft.advanced_small_crop_plot","fallback":"Advanced Small Crop Plot"},!food,consumable={consume_seconds:9999,animation:"block",sound:"intentionally_empty",has_consume_particles:false,on_consume_effects:[{type:"minecraft:play_sound",sound:"intentionally_empty"}]},custom_data={mr.crop_plot:1b,mr.crop_plot_type:"advanced_small_crop_plot"},item_model="mineraft:items/structures/crop_plot/advanced_small_crop_plot"]

execute as @a[scores={mr.admin=14}] run give @s poisonous_potato[item_name={"italic":false,"bold":false,"translate":"structure.mineraft.basic_crop_plot","fallback":"Basic Large Crop Plot"},!food,consumable={consume_seconds:9999,animation:"block",sound:"intentionally_empty",has_consume_particles:false,on_consume_effects:[{type:"minecraft:play_sound",sound:"intentionally_empty"}]},custom_data={mr.crop_plot:1b,mr.crop_plot_type:"basic_crop_plot"},item_model="mineraft:items/structures/crop_plot/basic_crop_plot"]

execute as @a[scores={mr.admin=15}] run give @s poisonous_potato[item_name={"italic":false,"bold":false,"translate":"structure.mineraft.advanced_crop_plot","fallback":"Advanced Large Crop Plot"},!food,consumable={consume_seconds:9999,animation:"block",sound:"intentionally_empty",has_consume_particles:false,on_consume_effects:[{type:"minecraft:play_sound",sound:"intentionally_empty"}]},custom_data={mr.crop_plot:1b,mr.crop_plot_type:"advanced_crop_plot"},item_model="mineraft:items/structures/crop_plot/advanced_crop_plot"]

execute as @a[scores={mr.admin=16}] run give @s poisonous_potato[item_name={"bold":false,"italic":false,"translate":"structure.mineraft.basic_smeltery","fallback":"Basic Smeltery"},!food,consumable={consume_seconds:9999,animation:"block",sound:"intentionally_empty",has_consume_particles:false,on_consume_effects:[{type:"minecraft:play_sound",sound:"intentionally_empty"}]},custom_data={mr.smeltery:1b,mr.smeltery_type:"basic_smelter"},item_model="raft_items:structure/basic/smeltery"]

execute as @a[scores={mr.admin=17}] run give @s poisonous_potato[item_name={"bold":false,"italic":false,"translate":"structure.mineraft.basic_water_purifier","fallback":"Basic Water Purifier"},!food,consumable={consume_seconds:9999,animation:"block",sound:"intentionally_empty",has_consume_particles:false,on_consume_effects:[{type:"minecraft:play_sound",sound:"intentionally_empty"}]},custom_data={mr.purifier:1b,mr.purifier_type:"basic_water_purifier"},item_model="raft_items:structure/basic/water_purifier"]

execute as @a[scores={mr.admin=18}] run give @s poisonous_potato[item_name={"bold":false,"italic":false,"translate":"structure.mineraft.basic_grill","fallback":"Basic Grill"},!food,consumable={consume_seconds:9999,animation:"block",sound:"intentionally_empty",has_consume_particles:false,on_consume_effects:[{type:"minecraft:play_sound",sound:"intentionally_empty"}]},custom_data={mr.grill:1b,mr.grill_type:"basic_grill"},item_model="raft_items:structure/basic/grill"]

execute as @a[scores={mr.admin=19}] run give @s poisonous_potato[item_name={"bold":false,"italic":false,"translate":"structure.mineraft.basic_recycler","fallback":"Basic Recycler"},!food,consumable={consume_seconds:9999,animation:"block",sound:"intentionally_empty",has_consume_particles:false,on_consume_effects:[{type:"minecraft:play_sound",sound:"intentionally_empty"}]},custom_data={mr.recycler:1b,mr.recycler_type:"basic_recycler"},item_model="raft_items:structure/basic/recycler"]

execute as @a[scores={mr.admin=20}] run give @s poisonous_potato[item_name={"bold":false,"italic":false,"translate":"structure.mineraft.simple_collection_net","fallback":"Simple Collection Net"},!food,consumable={consume_seconds:9999,animation:"block",sound:"intentionally_empty",has_consume_particles:false,on_consume_effects:[{type:"minecraft:play_sound",sound:"intentionally_empty"}]},custom_data={mr.collection_net:1b,mr.net_type:"simple_collection_net"},item_model="raft_items:structure/simple/collection_net"]

execute as @a[scores={mr.admin=21}] run give @s poisonous_potato[item_name={"bold":false,"italic":false,"translate":"structure.mineraft.advanced_collection_net","fallback":"Advanced Collection Net"},!food,consumable={consume_seconds:9999,animation:"block",sound:"intentionally_empty",has_consume_particles:false,on_consume_effects:[{type:"minecraft:play_sound",sound:"intentionally_empty"}]},custom_data={mr.collection_net:1b,mr.net_type:"advanced_collection_net"},item_model="raft_items:structure/advanced/collection_net"]

execute as @a[scores={mr.admin=22}] run give @s stick[item_name={"translate":"item.mineraft.building_hammer","fallback":"Building Hammer"},!food,consumable={consume_seconds:9999,animation:"spyglass",sound:"intentionally_empty",has_consume_particles:false,on_consume_effects:[{type:"minecraft:play_sound",sound:"intentionally_empty"}]},custom_data={mr.hammer:1b},item_model="raft_items:tool/building_hammer"]

execute as @a[scores={mr.admin=23}] run give @s stone[item_name={"bold":false,"italic":false,"translate":"item.mineraft.empty_cup","fallback":"Empty Cup"},max_damage=100,damage=100,max_stack_size=1,!food,consumable={consume_seconds:9999,animation:"block",sound:"intentionally_empty",has_consume_particles:false,on_consume_effects:[{type:"minecraft:play_sound",sound:"intentionally_empty"}]},custom_data={mr.pail-empty:1b,mr.cup_type:"cup",mr.cup_name:"Cup",mr.filled_uses:0},item_model="raft_items:container/cup/empty"]

execute as @a[scores={mr.admin=30}] run loot give @s loot mineraft:items/plank
execute as @a[scores={mr.admin=31}] run loot give @s loot mineraft:items/palm_leaf
execute as @a[scores={mr.admin=32}] run loot give @s loot mineraft:items/palm_seed
execute as @a[scores={mr.admin=33}] run loot give @s loot mineraft:items/metal_ingot
execute as @a[scores={mr.admin=34}] run loot give @s loot mineraft:items/scrap
execute as @a[scores={mr.admin=35}] run loot give @s loot mineraft:items/plastic
execute as @a[scores={mr.admin=36}] run loot give @s loot mineraft:items/trash_cube
execute as @a[scores={mr.admin=37}] run loot give @s loot mineraft:items/food/cooked_cod
execute as @a[scores={mr.admin=38}] run loot give @s loot mineraft:items/food/potato

# Reset after handling
scoreboard players reset @a[scores={mr.admin=1..}] mr.admin
