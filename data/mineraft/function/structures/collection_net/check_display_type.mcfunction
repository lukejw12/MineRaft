data modify storage mineraft:net held_type set from entity @s SelectedItem.components.minecraft:custom_data."mr.net_type"

execute as @e[type=item_display,tag=mr.net_preview] if score @s mr.link = @p mr.link run function mineraft:structures/collection_net/compare_type