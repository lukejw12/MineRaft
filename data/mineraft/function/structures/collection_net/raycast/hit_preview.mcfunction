scoreboard players operation #player_link mr.data = @s mr.link

execute store result score #ray_x mr.data run data get entity @s Pos[0] 10
execute store result score #ray_z mr.data run data get entity @s Pos[2] 10

execute as @a if score @s mr.link = #player_link mr.data run data modify storage mineraft:net net_type set from entity @s SelectedItem.components.minecraft:custom_data."mr.net_type"

function mineraft:structures/collection_net/get_model

execute as @e[type=item_display,tag=mr.center,limit=1,sort=nearest] at @s run function mineraft:structures/collection_net/place_adjacent

kill @s