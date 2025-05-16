#execute as @s[nbt={SelectedItem:{id:"minecraft:vex_spawn_egg",components:{"minecraft:custom_data":{extension_item:1b}}}}] at @s run function mineraft:raft_extension/is_holding_item\
execute as @s[nbt={SelectedItem:{id:"minecraft:vex_spawn_egg",components:{"minecraft:custom_data":{net_extension_item:1b}}}}] at @s run function mineraft:raft_extension/collection_net/is_holding_item\
execute as @s[nbt={SelectedItem:{id:"minecraft:structure_block",components:{"minecraft:custom_data":{hammer:1b}}}}] at @s run function mineraft:hammer/is_holding_item\
execute as @s[nbt={SelectedItem:{id:"minecraft:vex_spawn_egg",components:{"minecraft:custom_data":{rain_collector_item:1b}}}}] at @s run function mineraft:raft_utility/rain_collector/is_holding_item\
execute as @s[nbt={SelectedItem:{id:"minecraft:vex_spawn_egg",components:{"minecraft:custom_data":{smeltery_item:1b}}}}] at @s run function mineraft:raft_utility/smeltery/is_holding_item\
execute as @s[nbt={SelectedItem:{id:"minecraft:vex_spawn_egg",components:{"minecraft:custom_data":{wooden_staircase:1b}}}}] at @s run function mineraft:raft_decor/staircase/wooden_staircase/is_holding_item\
execute as @s[nbt={SelectedItem:{id:"minecraft:vex_spawn_egg",components:{"minecraft:custom_data":{wooden_platform:1b}}}}] at @s run function mineraft:raft_decor/platform/wooden_platform/is_holding_item\
execute as @s[nbt={SelectedItem:{id:"minecraft:vex_spawn_egg",components:{"minecraft:custom_data":{wooden_support:1b}}}}] at @s run function mineraft:raft_decor/pillar/wooden_pillar/is_holding_item\
execute as @s[nbt={SelectedItem:{id:"minecraft:vex_spawn_egg",components:{"minecraft:custom_data":{foundation_item:1b}}}}] at @s run function mineraft:raft_extension/foundation_armor/is_holding_item\
execute as @s[nbt={SelectedItem:{id:"minecraft:vex_spawn_egg",components:{"minecraft:custom_data":{tree_plot:1b}}}}] at @s run function mineraft:raft_utility/crop_plots/large_crop_plot/is_holding_item\
execute as @s[nbt={SelectedItem:{id:"minecraft:vex_spawn_egg",components:{"minecraft:custom_data":{crop_plot:1b}}}}] at @s run function mineraft:raft_utility/crop_plots/crop_plot/is_holding_item\
execute as @s[nbt={SelectedItem:{id:"minecraft:vex_spawn_egg",components:{"minecraft:custom_data":{water_purifier_item:1b}}}}] at @s run function mineraft:raft_utility/water_purifier/is_holding_item\


execute if items entity @s weapon.mainhand minecraft:vex_spawn_egg[minecraft:custom_data={extension_item:1b}] at @s run function mineraft:raft_extension/is_holding_item

execute if items entity @s weapon.mainhand minecraft:vex_spawn_egg[minecraft:custom_data={net_extension_item:1b}] at @s run function mineraft:raft_extension/collection_net/is_holding_item

execute if items entity @s weapon.mainhand minecraft:structure_block[minecraft:custom_data={hammer:1b}] at @s run function mineraft:hammer/is_holding_item

execute if items entity @s weapon.mainhand minecraft:vex_spawn_egg[minecraft:custom_data={rain_collector_item:1b}] at @s run function mineraft:raft_utility/rain_collector/is_holding_item

execute if items entity @s weapon.mainhand minecraft:vex_spawn_egg[minecraft:custom_data={smeltery_item:1b}] at @s run function mineraft:raft_utility/smeltery/is_holding_item

execute if items entity @s weapon.mainhand minecraft:vex_spawn_egg[minecraft:custom_data={wooden_staircase:1b}] at @s run function mineraft:raft_decor/staircase/wooden_staircase/is_holding_item

execute if items entity @s weapon.mainhand minecraft:vex_spawn_egg[minecraft:custom_data={wooden_platform:1b}] at @s run function mineraft:raft_decor/platform/wooden_platform/is_holding_item

execute if items entity @s weapon.mainhand minecraft:vex_spawn_egg[minecraft:custom_data={wooden_support:1b}] at @s run function mineraft:raft_decor/pillar/wooden_pillar/is_holding_item

execute if items entity @s weapon.mainhand minecraft:vex_spawn_egg[minecraft:custom_data={foundation_item:1b}] at @s run function mineraft:raft_extension/foundation_armor/is_holding_item

execute if items entity @s weapon.mainhand minecraft:vex_spawn_egg[minecraft:custom_data={tree_plot:1b}] at @s run function mineraft:raft_utility/crop_plots/large_crop_plot/is_holding_item

execute if items entity @s weapon.mainhand minecraft:vex_spawn_egg[minecraft:custom_data={crop_plot:1b}] at @s run function mineraft:raft_utility/crop_plots/crop_plot/is_holding_item

execute if items entity @s weapon.mainhand minecraft:vex_spawn_egg[minecraft:custom_data={water_purifier_item:1b}] at @s run function mineraft:raft_utility/water_purifier/is_holding_item
execute if items entity @s weapon.mainhand minecraft:vex_spawn_egg[minecraft:custom_data={simple_grill_item:1b}] at @s run function mineraft:raft_utility/grills/simple_grill/is_holding_item
execute if items entity @s weapon.mainhand minecraft:vex_spawn_egg[minecraft:custom_data={cooking_pot_item:1b}] at @s run function mineraft:raft_utility/cooking_pot/is_holding_item
execute if items entity @s weapon.mainhand minecraft:vex_spawn_egg[minecraft:custom_data={trophy_board_item:1b}] at @s run function mineraft:raft_decor/trophy_board/is_holding_item
#execute if items entity @s weapon.mainhand minecraft:vex_spawn_egg[minecraft:custom_data={thin_wooden_wall:1b}] at @s run function mineraft:raft_decor/wall/thin_wooden_wall/is_holding_item
execute if items entity @s weapon.mainhand minecraft:vex_spawn_egg[minecraft:custom_data={solid_wooden_wall:1b}] at @s run function mineraft:raft_decor/wall/solid_wooden_wall/is_holding_item
execute as @s at @s run function mineraft:hydration/hydration_deplenish

attribute @s block_interaction_range base reset


#execute as @a[scores={hydration=6..}] at @s run title @s actionbar [{"color":"aqua","text":"Hydration: "},{"score":{"name":"@s","objective":"hydration"}}]
#execute as @a[scores={hydration=..5}] run title @s actionbar [{"color":"red","text":"Hydration: "},{"score":{"name":"@s","objective":"hydration"}}]
execute as @a at @s run function mineraft:ui/display_ui

execute if items entity @s container.* barrel[custom_data={barrel_loot:1b}] at @s run function mineraft:barrels/open_barrel
execute as @s if predicate mineraft:holding_compass run schedule function mineraft:radar/holding_compass 20t append
bossbar set mineraft:radar/locate_distance players @a[predicate=mineraft:holding_compass]
execute as @s[predicate=mineraft:wearing_flippers] run effect give @s dolphins_grace infinite 0 false
# When the item is worn in the helmet slot, set worn to 1
execute as @a if items entity @s armor.head prismarine_shard run item modify entity @s armor.head mineraft:custom_data_worn_true

# When the item is in inventory or mainhand, set worn to 0
execute as @a unless items entity @s armor.head prismarine_shard run item modify entity @s player.cursor mineraft:custom_data_worn_false
