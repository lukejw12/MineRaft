# data/mineraft/function/raft_utility/cooking_pot/show_multiple.mcfunction

# Just show a simplified list with only non-zero counts
title @a[predicate=mineraft:looking_at_cooking_pot] actionbar ["",{"text":"Cooking Pot (","color":"gray"},{"score":{"name":"@s","objective":"ingredient_count"},"color":"white"},{"text":"/3) - ","color":"gray"},{"text":"Multiple items","color":"yellow"}]

# Alternative: show abbreviated list
# title @a[predicate=mineraft:looking_at_cooking_pot] actionbar ["",{"text":"Cooking Pot (","color":"gray"},{"score":{"name":"@s","objective":"ingredient_count"},"color":"white"},{"text":"/3)","color":"gray"}]