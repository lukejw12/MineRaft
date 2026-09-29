data modify entity @s data.grill_recipe set from storage mineraft:tmp r.key
data modify entity @s data.output_type set from storage mineraft:tmp r.recipe.output
execute store result score @s mr.max run data get storage mineraft:tmp r.recipe.time
data modify entity @s data.state set value "grilling"
particle smoke ~ ~0.5 ~ 0.2 0.2 0.2 0.01 20
