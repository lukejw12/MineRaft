
$execute store result score #barrel_id temp run data get block ~ ~ ~ Items[{Slot:$(slot)b}].id
execute store result score #item_id temp run data get entity @e[tag=processing,limit=1] Item.id

execute if score #barrel_id temp = #item_id temp run scoreboard players set #ids_match temp 1
execute unless score #barrel_id temp = #item_id temp run scoreboard players set #ids_match temp 0



$execute if score #ids_match temp matches 1 run function mineraft:raft_extension/collection_net/active_net/do_stack {slot:$(slot)}