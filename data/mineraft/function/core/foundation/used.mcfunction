schedule function mineraft:core/advancement/revoke/using_item 1t append
data modify storage mineraft:foundations foundation_type set from entity @s SelectedItem.components.minecraft:custom_data."mr.foundation_type"
tag @s add mr.revoke
tag @s add mr.place
