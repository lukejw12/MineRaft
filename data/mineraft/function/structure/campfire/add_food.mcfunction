execute if score @e[type=item_display,tag=mr.target,limit=1] mr.slots matches 4.. run return fail
data modify storage mineraft:tmp r set value {table:"cooking"}
data modify storage mineraft:tmp r.key set from entity @s SelectedItem.components."minecraft:custom_data"."mr.grill_type"
function mineraft:structure/common/recipe with storage mineraft:tmp r
execute unless data storage mineraft:tmp r.recipe run return fail
item modify entity @s weapon.mainhand mineraft:remove_one
data modify storage mineraft:tmp r.slot set value {progress:0,done:0b}
data modify storage mineraft:tmp r.slot.recipe set from storage mineraft:tmp r.key
data modify storage mineraft:tmp r.slot.output set from storage mineraft:tmp r.recipe.output
data modify storage mineraft:tmp r.slot.max set from storage mineraft:tmp r.recipe.time
execute as @e[type=item_display,tag=mr.target,limit=1] at @s run function mineraft:structure/campfire/food_added
