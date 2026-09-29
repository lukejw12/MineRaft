execute unless predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{vehicle:{}}} run return run function mineraft:item/coconut/land
scoreboard players add @s mr.timer 1
execute if score @s mr.timer matches 200.. on vehicle run kill @s
execute if score @s mr.timer matches 200.. run kill @s
