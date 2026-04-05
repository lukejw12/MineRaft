
execute unless data entity @s data.grid run function mineraft:grid/core/init
scoreboard players set #slot_free mr.data 1
$execute if data entity @s data.grid.b$(slot_x)_$(slot_z) run scoreboard players set #slot_free mr.data 0
