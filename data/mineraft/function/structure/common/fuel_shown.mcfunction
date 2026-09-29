data modify storage mineraft:tmp fd set value {style:"wood"}
data modify storage mineraft:tmp fd.style set from entity @s data.fuel_style
function mineraft:structure/common/fuel_display with storage mineraft:tmp fd
