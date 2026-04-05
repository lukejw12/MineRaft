
execute unless data entity @s data.grid run function mineraft:grid/core/init
$data modify entity @s data.grid.edge_$(side) set value {type:"$(wall_type)",id:$(wall_id),supporting:0b}
