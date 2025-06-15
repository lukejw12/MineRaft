execute if score @s hydration matches ..5 run title @s times 0 1000000000 0
execute if score @s hydration matches ..5 run title @s title {"text":"\uE000"}
execute if score @s hydration matches 6.. run title @s reset

execute if score @s hydration matches 6.. if predicate mineraft:looking_at_water_purifier run function mineraft:ui/water_purifier/display
execute if score @s hydration matches ..5 if predicate mineraft:looking_at_water_purifier run function mineraft:ui/water_purifier/display_low
execute if score @s hydration matches 6.. if predicate mineraft:looking_at_trading_post run function mineraft:ui/trading_post/display
execute if score @s hydration matches ..5 if predicate mineraft:looking_at_trading_post run function mineraft:ui/trading_post/display_low
execute if score @s hydration matches 6.. if predicate mineraft:looking_at_tree_plot run function mineraft:ui/tree_plot/display
execute if score @s hydration matches ..5 if predicate mineraft:looking_at_tree_plot run function mineraft:ui/tree_plot/display_low
execute if score @s hydration matches 6.. if predicate mineraft:looking_at_crop_plot run function mineraft:ui/crop_plot/display
execute if score @s hydration matches ..5 if predicate mineraft:looking_at_crop_plot run function mineraft:ui/crop_plot/display_low
execute if score @s hydration matches 6.. if predicate mineraft:looking_at_cooking_pot run function mineraft:ui/cooking_pot/display_high
execute if score @s hydration matches ..5 if predicate mineraft:looking_at_cooking_pot run function mineraft:ui/cooking_pot/display_low
execute if score @s hydration matches 6.. if predicate mineraft:looking_at_recycler run function mineraft:ui/recycler/display
execute if score @s hydration matches ..5 if predicate mineraft:looking_at_recycler run function mineraft:ui/recycler/display_low
execute if score @s hydration matches 6.. if predicate mineraft:looking_at_foundation_counter run function mineraft:ui/foundation_counter/display
execute if score @s hydration matches ..5 if predicate mineraft:looking_at_foundation_counter run function mineraft:ui/foundation_counter/display_low
execute if score @s hydration matches 6.. if predicate mineraft:looking_at_receiver run function mineraft:ui/receiver/display
execute if score @s hydration matches ..5 if predicate mineraft:looking_at_receiver run function mineraft:ui/receiver/display_low
execute if score @s hydration matches 6.. unless predicate mineraft:looking_at_cooking_pot unless predicate mineraft:looking_at_recycler unless predicate mineraft:looking_at_foundation_counter unless predicate mineraft:looking_at_receiver unless predicate mineraft:looking_at_crop_plot unless predicate mineraft:looking_at_tree_plot unless predicate mineraft:looking_at_trading_post unless predicate mineraft:looking_at_water_purifier run function mineraft:ui/display_simple
execute if score @s hydration matches ..5 unless predicate mineraft:looking_at_cooking_pot unless predicate mineraft:looking_at_recycler unless predicate mineraft:looking_at_foundation_counter unless predicate mineraft:looking_at_receiver unless predicate mineraft:looking_at_crop_plot unless predicate mineraft:looking_at_tree_plot unless predicate mineraft:looking_at_trading_post unless predicate mineraft:looking_at_water_purifier run function mineraft:ui/display_simple_low