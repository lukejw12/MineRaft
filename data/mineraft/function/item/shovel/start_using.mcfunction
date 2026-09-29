advancement revoke @s only mineraft:item/shovel/start_using
tag @s add Shoveler
tag @s add Shoveler_1
data modify storage mineraft:tmp sh set value {type:"metal"}
data modify storage mineraft:tmp sh.type set from entity @s SelectedItem.components."minecraft:custom_data"."mr.shovel".type
function mineraft:item/shovel/dig with storage mineraft:tmp sh
schedule function mineraft:item/shovel/do_dig 4
