function mineraft:structures/stairs/placement/models/get

execute if data storage mineraft:stairs {direction:"south"} positioned ~ ~ ~-1 if entity @e[type=armor_stand,tag=mr.stairs_shulker,dx=0,dy=2,dz=3] run return fail
execute if data storage mineraft:stairs {direction:"north"} positioned ~ ~ ~-1 if entity @e[type=armor_stand,tag=mr.stairs_shulker,dx=0,dy=2,dz=3] run return fail
execute if data storage mineraft:stairs {direction:"east"} positioned ~-1 ~ ~ if entity @e[type=armor_stand,tag=mr.stairs_shulker,dx=3,dy=2,dz=0] run return fail
execute if data storage mineraft:stairs {direction:"west"} positioned ~-1 ~ ~ if entity @e[type=armor_stand,tag=mr.stairs_shulker,dx=3,dy=2,dz=0] run return fail

execute positioned ~ ~-0.5 ~ run function mineraft:structures/stairs/placement/spawn/shulkers with storage mineraft:stairs
execute positioned ~ ~ ~ run function mineraft:structures/stairs/placement/spawn/display with storage mineraft:stairs

execute as @e[type=item_display,tag=mr.new_stairs,limit=1] run data modify entity @s data.stairs_type set from storage mineraft:stairs stairs_type
execute as @e[type=item_display,tag=mr.new_stairs,limit=1] run data modify entity @s data.stairs_id set from storage mineraft:stairs stairs_id
execute as @e[type=item_display,tag=mr.new_stairs,limit=1] store result score @s mr.stairs_id run data get storage mineraft:stairs stairs_id

tag @e[type=item_display,tag=mr.new_stairs] remove mr.new_stairs

execute as @a if score @s mr.link = #player_link mr.data run clear @s *[custom_data~{mr.stairs:1b}] 1

playsound block.anvil.use block @a[distance=..10] ~ ~ ~ 100 2 1