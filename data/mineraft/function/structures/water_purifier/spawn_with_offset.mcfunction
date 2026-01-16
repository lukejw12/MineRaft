$setblock ~$(block1_offset_x) ~ ~$(block1_offset_z) barrier

function mineraft:structures/water_purifier/spawn_display with storage mineraft:purifier

summon interaction ~0.5 ~ ~0.5 {width:1.05f,height:1.5f,Tags:["mr.purifier","mr.purifier_interaction","mr.new_interaction","mr.block_0"]}
function mineraft:structures/water_purifier/spawn_interaction with storage mineraft:purifier

summon item_display ~0.5 ~0.5 ~0.5 {item_display:"ground",Tags:["mr.purifier","mr.purifier_fuel_display","mr.new_fuel"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"minecraft:air"}}}

execute as @e[type=item_display,tag=mr.new_display,limit=1] store result score @s mr.purifier_id run scoreboard players add #global mr.purifier_id 1
execute as @e[type=interaction,tag=mr.new_interaction] run scoreboard players operation @s mr.purifier_id = @e[type=item_display,tag=mr.new_display,limit=1] mr.purifier_id
execute as @e[type=item_display,tag=mr.new_fuel,limit=1] run scoreboard players operation @s mr.purifier_id = @e[type=item_display,tag=mr.new_display,limit=1] mr.purifier_id

execute as @e[type=item_display,tag=mr.new_display,limit=1] run data modify entity @s data.purifier_type set from storage mineraft:purifier purifier_type
execute as @e[type=item_display,tag=mr.new_display,limit=1] run data modify entity @s data.state set value "idle"
execute as @e[type=item_display,tag=mr.new_display,limit=1] run data modify entity @s data.block1_offset_x set from storage mineraft:purifier block1_offset_x
execute as @e[type=item_display,tag=mr.new_display,limit=1] run data modify entity @s data.block1_offset_z set from storage mineraft:purifier block1_offset_z
execute as @e[type=item_display,tag=mr.new_display,limit=1] run scoreboard players set @s mr.purifier_fuel 0
execute as @e[type=item_display,tag=mr.new_display,limit=1] run scoreboard players set @s mr.purifier_progress 0
execute as @e[type=item_display,tag=mr.new_display,limit=1] run scoreboard players set @s mr.purifier_timer 0

tag @e[type=item_display,tag=mr.new_display] remove mr.new_display
tag @e[type=item_display,tag=mr.new_fuel] remove mr.new_fuel
tag @e[type=interaction,tag=mr.new_interaction] remove mr.new_interaction