scoreboard players operation #sm.id mr.data = @s mr.id
data modify storage mineraft:tmp sm set value {stage:"none",content:"metal"}
data modify storage mineraft:tmp sm.content set from entity @s data.content
execute if data entity @s {data:{state:"smelting"}} run function mineraft:structure/smelter/content_stage
execute if data entity @s {data:{state:"finished"}} run data modify storage mineraft:tmp sm.stage set value "ready"
execute if data storage mineraft:tmp sm{stage:"none"} as @e[type=item_display,tag=mr.p.content,distance=..2] if score @s mr.id = #sm.id mr.data run return run data modify entity @s item.components."minecraft:item_model" set value "minecraft:air"
function mineraft:structure/smelter/content_model with storage mineraft:tmp sm
