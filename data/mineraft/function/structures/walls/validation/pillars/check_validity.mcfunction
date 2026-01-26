scoreboard players operation #check_id1 mr.data = @s mr.wall_id
scoreboard players operation #check_id2 mr.data = @s mr.wall_id2

execute store result score #pillar_x mr.data run data get entity @s Pos[0]
execute store result score #pillar_z mr.data run data get entity @s Pos[2]

scoreboard players set #wall1_valid mr.data 1
scoreboard players set #wall2_valid mr.data 1

execute as @e[type=item_display,tag=mr.wall_display] if score @s mr.wall_id = #check_id1 mr.data at @s store result score #wall1_valid mr.data run function mineraft:structures/walls/validation/pillars/check_wall_corner
execute as @e[type=item_display,tag=mr.wall_display] if score @s mr.wall_id = #check_id2 mr.data at @s store result score #wall2_valid mr.data run function mineraft:structures/walls/validation/pillars/check_wall_corner

execute unless score #wall1_valid mr.data matches 1 run kill @s
execute unless score #wall2_valid mr.data matches 1 run kill @s