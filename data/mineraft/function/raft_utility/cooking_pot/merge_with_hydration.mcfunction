
execute as @a[scores={hydration=6..},predicate=!mineraft:looking_at_cooking_pot] at @s run title @s actionbar [{"color":"aqua","text":"Hydration: "},{"score":{"name":"@s","objective":"hydration"}}]

execute as @a[scores={hydration=6..},predicate=mineraft:looking_at_cooking_pot] at @s run function mineraft:raft_utility/cooking_pot/show_cooking_pot_high_hydration

execute as @a[scores={hydration=..5},predicate=!mineraft:looking_at_cooking_pot] run title @s actionbar [{"color":"red","text":"Hydration: "},{"score":{"name":"@s","objective":"hydration"}}]

execute as @a[scores={hydration=..5},predicate=mineraft:looking_at_cooking_pot] at @s run function mineraft:raft_utility/cooking_pot/show_cooking_pot_low_hydration