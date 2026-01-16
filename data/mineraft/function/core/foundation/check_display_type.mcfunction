data modify storage mineraft:foundations held_type set from entity @s SelectedItem.components.minecraft:custom_data."mr.foundation_type"

execute as @e[type=item_display,tag=mr.display] if score @s mr.link = @p mr.link run function mineraft:core/foundation/compare_type