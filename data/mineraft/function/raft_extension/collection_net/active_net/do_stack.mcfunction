

$execute store result score #current_count temp run data get block ~ ~ ~ Items[{Slot:$(slot)b}].count
execute store result score #item_count temp run data get entity @e[tag=processing,limit=1] Item.count


scoreboard players set #max_count temp 64
scoreboard players operation #space_left temp = #max_count temp
scoreboard players operation #space_left temp -= #current_count temp

scoreboard players operation #to_add temp = #item_count temp
execute if score #to_add temp > #space_left temp run scoreboard players operation #to_add temp = #space_left temp

scoreboard players operation #new_count temp = #current_count temp
scoreboard players operation #new_count temp += #to_add temp

$execute store result block ~ ~ ~ Items[{Slot:$(slot)b}].count byte 1 run scoreboard players get #new_count temp

scoreboard players operation #remaining_count temp = #item_count temp
scoreboard players operation #remaining_count temp -= #to_add temp

execute if score #remaining_count temp matches ..0 run kill @e[tag=processing,limit=1]
execute if score #remaining_count temp matches ..0 run scoreboard players set #processed temp 1

execute if score #remaining_count temp matches 1.. store result entity @e[tag=processing,limit=1] Item.count byte 1 run scoreboard players get #remaining_count temp