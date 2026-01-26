schedule function mineraft:core/advancement/revoke/using_item 3t append
data modify storage mineraft:net net_type set from entity @s SelectedItem.components.minecraft:custom_data."mr.net_type"
tag @s add mr.revoke
tag @s add mr.place_net