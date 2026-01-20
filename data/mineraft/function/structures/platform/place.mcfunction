schedule function mineraft:core/advancement/revoke/using_item 5t append
tag @s add mr.revoke
data modify storage mineraft:platform platform_type set from entity @s SelectedItem.components.minecraft:custom_data."mr.platform_type"

execute store result score #player_rot mr.data run data get entity @s Rotation[0]

execute at @s anchored eyes positioned ^ ^ ^ anchored feet run function mineraft:structures/platform/raycast/start