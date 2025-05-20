
scoreboard players operation #new_count temp = #current_count temp
scoreboard players operation #new_count temp += #to_add temp
$execute store result block ~ ~ ~ Items[{Slot:$(slot)b}].count byte 1 run scoreboard players get #new_count temp
scoreboard players operation #remaining_count temp = #item_count temp
scoreboard players operation #remaining_count temp -= #to_add temp
execute if score #remaining_count temp matches ..0 run kill @e[tag=processing,limit=1]
execute if score #remaining_count temp matches ..0 run scoreboard players set #processed temp 1
execute if score #remaining_count temp matches 1.. store result entity @e[tag=processing,limit=1] Item.count byte 1 run scoreboard players get #remaining_count temp