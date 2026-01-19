execute on target run tag @s add mr.collecting

scoreboard players operation #collect_id mr.data = @s mr.flotsam_id

execute as @e[type=item,tag=mr.flotsam] if score @s mr.flotsam_id = #collect_id mr.data run data modify storage mineraft:flotsam item_id set from entity @s Item.id
execute as @e[type=item,tag=mr.flotsam] if score @s mr.flotsam_id = #collect_id mr.data store result storage mineraft:flotsam item_count int 1 run data get entity @s Item.count

execute as @a[tag=mr.collecting] run function mineraft:flotsam/collection/give_item with storage mineraft:flotsam

execute as @e[type=item,tag=mr.flotsam] if score @s mr.flotsam_id = #collect_id mr.data run kill @s
execute as @e[type=item_display,tag=mr.flotsam_display] if score @s mr.flotsam_id = #collect_id mr.data run kill @s

execute at @s run playsound minecraft:entity.item.pickup player @a[tag=mr.collecting] ~ ~ ~ 1 1
data remove entity @s interaction
tag @a remove mr.collecting

kill @s