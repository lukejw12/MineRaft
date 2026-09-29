data modify entity @s data.smelt_type set from storage mineraft:tmp r.key
data modify entity @s data.output_type set from storage mineraft:tmp r.recipe.output
data modify entity @s data.finished_state set from storage mineraft:tmp r.recipe.state
data modify entity @s data.content set value "metal"
data modify entity @s data.content set from storage mineraft:tmp r.recipe.content
execute store result score @s mr.max run data get storage mineraft:tmp r.recipe.time
data modify entity @s data.state set value "smelting"
execute if score @s mr.fuel matches 1.. run function mineraft:structure/smelter/model/active
execute if score @s mr.fuel matches ..0 run function mineraft:structure/smelter/model/active_idle
particle smoke ~ ~0.5 ~ 0.2 0.2 0.2 0.01 20
function mineraft:structure/smelter/content
