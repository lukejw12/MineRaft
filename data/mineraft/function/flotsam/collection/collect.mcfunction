# Get who interacted
execute on target run tag @s add mr.collecting

# Get flotsam ID
scoreboard players operation #collect_id mr.data = @s mr.flotsam_id

# Extract item data to separate values
execute as @e[type=item,tag=mr.flotsam] if score @s mr.flotsam_id = #collect_id mr.data run data modify storage mineraft:flotsam item_id set from entity @s Item.id
execute as @e[type=item,tag=mr.flotsam] if score @s mr.flotsam_id = #collect_id mr.data store result storage mineraft:flotsam item_count int 1 run data get entity @s Item.count

# Give item to player
execute as @a[tag=mr.collecting] run function mineraft:flotsam/collection/give_item with storage mineraft:flotsam

# Kill linked entities
execute as @e[type=item,tag=mr.flotsam] if score @s mr.flotsam_id = #collect_id mr.data run kill @s
execute as @e[type=item_display,tag=mr.flotsam_display] if score @s mr.flotsam_id = #collect_id mr.data run kill @s

# Sound/particle
execute at @s run playsound minecraft:entity.item.pickup player @a[tag=mr.collecting] ~ ~ ~ 1 1
# Clear interaction
data remove entity @s interaction
tag @a remove mr.collecting

# Kill self
kill @s