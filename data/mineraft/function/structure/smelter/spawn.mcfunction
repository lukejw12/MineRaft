data modify entity @s data.state set value "idle"
data modify entity @s data.model_base set from storage mineraft:tmp pl.def.state_model
scoreboard players set @s mr.fuel 0
scoreboard players set @s mr.progress 0
scoreboard players set @s mr.max 0
scoreboard players set @s mr.count 0
