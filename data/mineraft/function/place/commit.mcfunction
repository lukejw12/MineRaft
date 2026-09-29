data modify storage mineraft:tmp pl.stack set from entity @s SelectedItem
data modify storage mineraft:tmp pl.stack.count set value 1
function mineraft:structure/spawn/start
item modify entity @s[gamemode=!creative] weapon.mainhand mineraft:remove_one
function mineraft:place/sound with storage mineraft:tmp pl.def.sound
function mineraft:place/preview/clear
