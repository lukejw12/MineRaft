
execute unless data entity @s data.grid run function mineraft:grid/core/init
$data modify entity @s data.grid.b$(slot_x)_$(slot_z) set value {type:"$(type)"}
