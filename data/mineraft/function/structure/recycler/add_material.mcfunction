execute if data entity @e[type=item_display,tag=mr.target,limit=1] {data:{state:"finished"}} run return fail
execute if score @e[type=item_display,tag=mr.target,limit=1] mr.fill matches 600.. run return fail
data modify storage mineraft:tmp r set value {table:"recycling"}
data modify storage mineraft:tmp r.key set from entity @s SelectedItem.components."minecraft:custom_data"."mr.recycle_type"
function mineraft:structure/common/recipe with storage mineraft:tmp r
execute unless data storage mineraft:tmp r.recipe run return fail
execute store result score #rc.value mr.data run data get storage mineraft:tmp r.recipe
item modify entity @s weapon.mainhand mineraft:remove_one
execute as @e[type=item_display,tag=mr.target,limit=1] at @s run function mineraft:structure/recycler/material_added
