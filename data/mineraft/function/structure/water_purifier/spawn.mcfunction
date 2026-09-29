data modify entity @s data.state set value "idle"
data modify entity @s data.model_base set from storage mineraft:tmp pl.def.state_model
scoreboard players set @s mr.fuel 0
scoreboard players set @s mr.progress 0
scoreboard players set @s mr.timer 0
data modify entity @s data.fire set value {x:0.0,z:-0.8}
execute if score #pl.rot mr.data matches 1 run data modify entity @s data.fire set value {x:0.3,z:-0.7}
execute if score #pl.rot mr.data matches 2 run data modify entity @s data.fire set value {x:0.18,z:-0.55}
execute if score #pl.rot mr.data matches 3 run data modify entity @s data.fire set value {x:0.0,z:-0.5}
