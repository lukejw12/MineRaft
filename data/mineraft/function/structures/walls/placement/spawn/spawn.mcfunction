function mineraft:structures/walls/validation/integrity/space

execute if score #space_clear mr.data matches 0 run return fail

function mineraft:structures/walls/utils/trapdoors/place with storage mineraft:walls
function mineraft:structures/walls/placement/spawn/display with storage mineraft:walls

execute as @e[type=item_display,tag=mr.new_wall,limit=1] run data modify entity @s data.wall_type set from storage mineraft:walls wall_type
execute as @e[type=item_display,tag=mr.new_wall,limit=1] run data modify entity @s data.side set from storage mineraft:walls side

execute as @e[type=item_display,tag=mr.new_wall,limit=1] store result score @s mr.wall_id run scoreboard players add #global mr.wall_id 1

execute as @e[type=item_display,tag=mr.new_wall,limit=1] at @s positioned ~ ~2 ~ if block ~ ~ ~ barrier run tag @s add mr.supporting_platform

execute as @e[type=item_display,tag=mr.new_wall,limit=1] at @s run function mineraft:structures/walls/validation/corners/check

tag @e[type=item_display,tag=mr.new_wall] remove mr.new_wall

execute as @e[type=item_display,tag=mr.wall_pillar,distance=..5] at @s run function mineraft:structures/walls/validation/pillars/check_validity

playsound block.anvil.use block @a[distance=..10] ~ ~ ~ 100 2 1

