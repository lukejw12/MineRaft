scoreboard players operation #player_link mr.data = @s mr.link
execute store result score #ray_x mr.data run data get entity @s Pos[0] 10
execute store result score #ray_z mr.data run data get entity @s Pos[2] 10
tag @a[tag=mr.place] remove mr.place

execute as @e[type=item_display,tag=mr.center,limit=1,sort=nearest] at @s run function mineraft:core/raycast/helpers/place_at_location

kill @s