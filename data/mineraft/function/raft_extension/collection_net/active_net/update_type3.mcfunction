scoreboard players set #new_count temp 0
scoreboard players operation #new_count temp = #this_type_count temp
scoreboard players operation #new_count temp += #item_count temp
execute if score #new_count temp matches 11.. run scoreboard players set #new_count temp 10
execute store result entity @s data.Type3.count int 1 run scoreboard players get #new_count temp
execute unless data entity @s data.Type3.data run data modify entity @s data.Type3.data set from storage mineraft:temp Item