data modify entity @s data.state set value "idle"
data modify entity @s data.has_battery set value 0b
data modify entity @s data.battery_life set value 0
data modify entity @s data.cube_count set value 0
data modify entity @s data.model_base set from storage mineraft:tmp pl.def.state_model
scoreboard players set @s mr.fill 0
scoreboard players set @s mr.progress 0
scoreboard players set @s mr.timer 0
scoreboard players set @s mr.timer2 0
