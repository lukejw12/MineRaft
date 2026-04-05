
execute store result storage mineraft:grid wall_id int 1 run scoreboard players get @s mr.stairs_id
data modify storage mineraft:grid wall_type set value "stairs"

execute if data entity @s {data:{stairs_type:""}} run return 1

execute as @e[type=item_display,tag=mr.surface,distance=..3,limit=1,sort=nearest] at @s run function mineraft:grid/core/migrate_stairs_detect
