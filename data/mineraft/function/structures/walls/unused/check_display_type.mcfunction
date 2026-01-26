#data modify storage mineraft:walls held_type set from entity @s SelectedItem.components.minecraft:custom_data."mr.wall_type"

#execute as @e[type=item_display,tag=mr.wall_preview] if score @s mr.link = @p mr.link run function mineraft:structures/walls/compare_type