
$execute if score #processed temp matches 0 unless data block ~ ~ ~ Items[{Slot:$(slot)b}] run function mineraft:raft_extension/collection_net/active_net/insert_item {slot:$(slot)}

$execute if score #processed temp matches 0 if data block ~ ~ ~ Items[{Slot:$(slot)b}] run function mineraft:raft_extension/collection_net/active_net/try_stack {slot:$(slot)}