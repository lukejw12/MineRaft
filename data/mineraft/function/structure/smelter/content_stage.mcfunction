data modify storage mineraft:tmp sm.stage set value "raw"
scoreboard players operation #sm.p mr.data = @s mr.count
scoreboard players operation #sm.p mr.data *= #3 mr.const
execute if score @s mr.count matches 1.. run data modify storage mineraft:tmp sm.stage set value "melting"
scoreboard players operation #sm.q mr.data = @s mr.max
execute if score #sm.p mr.data >= #sm.q mr.data run data modify storage mineraft:tmp sm.stage set value "molten"
