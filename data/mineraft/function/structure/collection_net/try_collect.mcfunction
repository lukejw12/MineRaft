execute store result score #net.cap mr.data run data get entity @s data.capacity
execute if score @s mr.count >= #net.cap mr.data run return fail
execute if items entity @e[type=item,tag=mr.flotsam,distance=..2,sort=nearest,limit=1] contents *[custom_data~{mr.palm_leaf:1b}] run return run function mineraft:structure/collection_net/collect {type:"palm_leaf"}
execute if items entity @e[type=item,tag=mr.flotsam,distance=..2,sort=nearest,limit=1] contents *[custom_data~{mr.wooden_plank:1b}] run return run function mineraft:structure/collection_net/collect {type:"wooden_plank"}
execute if items entity @e[type=item,tag=mr.flotsam,distance=..2,sort=nearest,limit=1] contents *[custom_data~{mr.plastic:1b}] run return run function mineraft:structure/collection_net/collect {type:"plastic"}
execute if items entity @e[type=item,tag=mr.flotsam,distance=..2,sort=nearest,limit=1] contents *[custom_data~{mr.barrel:1b}] run return run function mineraft:structure/collection_net/collect {type:"barrel"}
