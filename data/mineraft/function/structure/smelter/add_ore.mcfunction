execute unless data entity @e[type=item_display,tag=mr.target,limit=1] {data:{state:"idle"}} run return fail
data modify storage mineraft:tmp r set value {table:"smelting"}
data modify storage mineraft:tmp r.key set from entity @s SelectedItem.components."minecraft:custom_data"."mr.smelt_type"
function mineraft:structure/common/recipe with storage mineraft:tmp r
execute unless data storage mineraft:tmp r.recipe run return fail
item modify entity @s weapon.mainhand mineraft:remove_one
execute as @e[type=item_display,tag=mr.target,limit=1] at @s run function mineraft:structure/smelter/ore_added
