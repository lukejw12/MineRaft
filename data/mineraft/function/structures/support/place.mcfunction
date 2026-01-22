schedule function mineraft:core/advancement/revoke/using_item 5t append
tag @s add mr.revoke
data modify storage mineraft:support support_type set from entity @s SelectedItem.components.minecraft:custom_data."mr.support_type"

execute store result score #player_rot mr.data run data get entity @s Rotation[0]

execute at @s anchored eyes positioned ^ ^ ^ anchored feet run function mineraft:structures/support/raycast/start
execute unless entity @e[tag=mr.support] run say support gone --support-place