execute unless block ~ ~-1 ~ barrier unless block ~ ~-1 ~ iron_bars run function mineraft:structures/stairs/core/destroy

scoreboard players operation #check_id mr.data = @s mr.stairs_id
scoreboard players set #shulker_count mr.data 0
execute as @e[type=armor_stand,tag=mr.stairs_shulker] if score @s mr.stairs_id = #check_id mr.data run scoreboard players add #shulker_count mr.data 1

execute unless score #shulker_count mr.data matches 6 run function mineraft:structures/stairs/core/destroy