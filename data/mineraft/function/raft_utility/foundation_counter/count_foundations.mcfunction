scoreboard players set #foundation_count dummy 0

execute as @e[type=marker,tag=extension_active] run scoreboard players add #foundation_count dummy 1

scoreboard players operation @s foundation_count = #foundation_count dummy