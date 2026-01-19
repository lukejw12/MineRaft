execute as @a if score @s mr.link = #player_link mr.data unless entity @e[type=item_display,tag=mr.net_preview] if score @s mr.link = #player_link mr.data run function mineraft:structures/collection_net/spawn_preview with storage mineraft:net

execute as @e[type=item_display,tag=mr.new_net_preview,limit=1] run scoreboard players operation @s mr.link = #player_link mr.data
tag @e[type=item_display,tag=mr.new_net_preview] remove mr.new_net_preview

execute store result score #center_x mr.data run data get entity @s Pos[0] 10
execute store result score #center_z mr.data run data get entity @s Pos[2] 10

scoreboard players operation #offset_x mr.data = #ray_x mr.data
scoreboard players operation #offset_x mr.data -= #center_x mr.data

scoreboard players operation #offset_z mr.data = #ray_z mr.data
scoreboard players operation #offset_z mr.data -= #center_z mr.data

scoreboard players operation #abs_x mr.data = #offset_x mr.data
execute if score #abs_x mr.data matches ..-1 run scoreboard players operation #abs_x mr.data *= #-1 mr.const

scoreboard players operation #abs_z mr.data = #offset_z mr.data
execute if score #abs_z mr.data matches ..-1 run scoreboard players operation #abs_z mr.data *= #-1 mr.const

execute if score #abs_x mr.data >= #abs_z mr.data if score #offset_x mr.data matches 1.. run return run execute align xyz positioned ~3 ~ ~ run function mineraft:structures/collection_net/check_and_place_preview
execute if score #abs_x mr.data >= #abs_z mr.data if score #offset_x mr.data matches ..-1 run return run execute align xyz positioned ~-3 ~ ~ run function mineraft:structures/collection_net/check_and_place_preview

execute if score #offset_z mr.data matches 1.. run return run execute align xyz positioned ~ ~ ~3 run function mineraft:structures/collection_net/check_and_place_preview
execute run execute align xyz positioned ~ ~ ~-3 run function mineraft:structures/collection_net/check_and_place_preview