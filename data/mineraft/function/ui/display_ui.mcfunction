execute if score @s hydration matches ..5 run title @s times 0 1000000000 0
execute if score @s hydration matches ..5 run title @s title {"text":"\uE000"}
execute if score @s hydration matches 6.. run title @s reset

execute if score @s hydration matches 6.. if predicate mineraft:looking_at_cooking_pot run function mineraft:ui/cooking_pot/display_high
execute if score @s hydration matches ..5 if predicate mineraft:looking_at_cooking_pot run function mineraft:ui/cooking_pot/display_low
execute if score @s hydration matches 6.. if predicate mineraft:looking_at_recycler run function mineraft:ui/recycler/display
execute if score @s hydration matches ..5 if predicate mineraft:looking_at_recycler run function mineraft:ui/recycler/display_low
execute if score @s hydration matches 6.. if predicate mineraft:looking_at_foundation_counter run function mineraft:ui/foundation_counter/display
execute if score @s hydration matches ..5 if predicate mineraft:looking_at_foundation_counter run function mineraft:ui/foundation_counter/display_low
execute if score @s hydration matches 6.. if predicate mineraft:looking_at_receiver run function mineraft:ui/receiver/display
execute if score @s hydration matches ..5 if predicate mineraft:looking_at_receiver run function mineraft:ui/receiver/display_low
execute if score @s hydration matches 6.. unless predicate mineraft:looking_at_cooking_pot unless predicate mineraft:looking_at_recycler unless predicate mineraft:looking_at_foundation_counter unless predicate mineraft:looking_at_receiver run function mineraft:ui/display_simple
execute if score @s hydration matches ..5 unless predicate mineraft:looking_at_cooking_pot unless predicate mineraft:looking_at_recycler unless predicate mineraft:looking_at_foundation_counter unless predicate mineraft:looking_at_receiver run function mineraft:ui/display_simple_low