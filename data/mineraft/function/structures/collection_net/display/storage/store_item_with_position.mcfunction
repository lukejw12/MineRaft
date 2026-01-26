$data modify storage mineraft:net temp_item set value {item:$(collected_item),position:$(item_position)}
data modify entity @s data.items append from storage mineraft:net temp_item