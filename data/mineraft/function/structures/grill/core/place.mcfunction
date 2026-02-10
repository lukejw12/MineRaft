schedule function mineraft:core/advancement/revoke/using_item 10t append
tag @s add mr.revoke
data modify storage mineraft:grill grill_type set from entity @s SelectedItem.components.minecraft:custom_data."mr.grill_type"
execute store result score #player_rot mr.data run data get entity @s Rotation[0]
execute at @s anchored eyes positioned ^ ^ ^ anchored feet run function mineraft:structures/grill/raycast/start