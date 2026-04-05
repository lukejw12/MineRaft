
execute unless data entity @s data.grid run function mineraft:grid/core/init
data modify entity @s data.grid.has_support set value 1b
data modify entity @s data.grid.support_max set value 5
execute unless data entity @s data.grid.platform_count run data modify entity @s data.grid.platform_count set value 0
