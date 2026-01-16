execute store result score #start_x mr.data run data get entity @s Pos[0]
execute store result score #start_z mr.data run data get entity @s Pos[2]

execute store result score #center_x mr.data run data get entity @e[type=item_display,tag=mr.center,limit=1] Pos[0]
execute store result score #center_z mr.data run data get entity @e[type=item_display,tag=mr.center,limit=1] Pos[2]

execute store result score #random_x mr.data run random value -40..40
execute store result score #random_z mr.data run random value -40..40

scoreboard players operation #end_x mr.data = #center_x mr.data
scoreboard players operation #end_x mr.data += #random_x mr.data
scoreboard players operation #end_z mr.data = #center_z mr.data
scoreboard players operation #end_z mr.data += #random_z mr.data

function mineraft:shark/pathing/generate_curved_path