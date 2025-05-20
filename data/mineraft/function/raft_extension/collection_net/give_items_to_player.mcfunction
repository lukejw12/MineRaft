
execute if entity @e[type=marker,tag=current_net,limit=1] if data entity @e[type=marker,tag=current_net,limit=1] data.Type1.id run function mineraft:raft_extension/collection_net/give_type1

execute if entity @e[type=marker,tag=current_net,limit=1] if data entity @e[type=marker,tag=current_net,limit=1] data.Type2.id run function mineraft:raft_extension/collection_net/give_type2

execute if entity @e[type=marker,tag=current_net,limit=1] if data entity @e[type=marker,tag=current_net,limit=1] data.Type3.id run function mineraft:raft_extension/collection_net/give_type3

data modify entity @e[type=marker,tag=current_net,limit=1] data.Type1 set value {}
data modify entity @e[type=marker,tag=current_net,limit=1] data.Type2 set value {}
data modify entity @e[type=marker,tag=current_net,limit=1] data.Type3 set value {}