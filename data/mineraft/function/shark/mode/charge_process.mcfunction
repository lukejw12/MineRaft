execute store result score #target_x mr.data run data get entity @a[tag=mr.shark_target,limit=1] Pos[0] 1000
execute store result score #target_y mr.data run data get entity @a[tag=mr.shark_target,limit=1] Pos[1] 1000
execute store result score #target_z mr.data run data get entity @a[tag=mr.shark_target,limit=1] Pos[2] 1000

execute if score #target_y mr.data matches 62000.. run scoreboard players set #target_y mr.data 61000

execute store result score #shark_x mr.data run data get entity @s Pos[0] 1000
execute store result score #shark_y mr.data run data get entity @s Pos[1] 1000
execute store result score #shark_z mr.data run data get entity @s Pos[2] 1000

execute if score #shark_y mr.data matches 62000.. unless entity @e[type=item_display,tag=mr.foundation,distance=..8] run scoreboard players set #target_y mr.data 58000

execute facing entity @a[tag=mr.shark_target,limit=1] feet positioned ^ ^ ^3 if entity @e[type=item_display,tag=mr.foundation,distance=..2] run scoreboard players set #target_y mr.data 56000

scoreboard players operation #delta_x mr.data = #target_x mr.data
scoreboard players operation #delta_x mr.data -= #shark_x mr.data
scoreboard players operation #delta_y mr.data = #target_y mr.data
scoreboard players operation #delta_y mr.data -= #shark_y mr.data
scoreboard players operation #delta_z mr.data = #target_z mr.data
scoreboard players operation #delta_z mr.data -= #shark_z mr.data

function mineraft:shark/core/update_rotation

execute store result entity @s Motion[0] double 0.00008 run scoreboard players get #delta_x mr.data
execute store result entity @s Motion[1] double 0.00008 run scoreboard players get #delta_y mr.data
execute store result entity @s Motion[2] double 0.00008 run scoreboard players get #delta_z mr.data

execute if entity @a[tag=mr.shark_target,distance=..2] run function mineraft:shark/mode/deal_damage