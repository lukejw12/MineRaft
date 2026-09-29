scoreboard players add #next mr.id 1
scoreboard players operation #s.id mr.data = #next mr.id
function mineraft:structure/spawn/yaw
scoreboard players set #s.first mr.data 1
data modify storage mineraft:tmp it set from storage mineraft:tmp pl.def.parts
execute if data storage mineraft:tmp it[0] run function mineraft:structure/spawn/part_loop
data modify storage mineraft:tmp it set from storage mineraft:tmp pl.def.hitboxes
execute if data storage mineraft:tmp it[0] run function mineraft:structure/spawn/hitbox_loop
execute as @e[type=item_display,tag=mr.new_root,limit=1] at @s run function mineraft:structure/spawn/finish
tag @e[type=item_display,tag=mr.new_root] remove mr.new_root
execute if score #sp.sailing sp.data matches 1 run function mineraft:sail/adopt
