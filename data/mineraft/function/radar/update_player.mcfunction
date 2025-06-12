execute unless score @s radar_target matches 1.. run bossbar set mineraft:radar/locate_distance name [{"text":"Unlinked Radar! Link with receiver!","color":"red"}]
execute unless score @s radar_target matches 1.. run bossbar set mineraft:radar/locate_distance color red
execute unless score @s radar_target matches 1.. run bossbar set mineraft:radar/locate_distance value 0
execute unless score @s radar_target matches 1.. run return 0

execute if score @s receiver_linked matches 1.. as @e[type=marker,tag=receiver_active] if score @s receiver_id = @p receiver_linked if score @s receiver_has_battery matches 0 run bossbar set mineraft:radar/locate_distance name [{"text":"Linked Receiver is unpowered, Power it with a battery!","color":"red"}]
execute if score @s receiver_linked matches 1.. as @e[type=marker,tag=receiver_active] if score @s receiver_id = @p receiver_linked if score @s receiver_has_battery matches 0 run bossbar set mineraft:radar/locate_distance color red
execute if score @s receiver_linked matches 1.. as @e[type=marker,tag=receiver_active] if score @s receiver_id = @p receiver_linked if score @s receiver_has_battery matches 0 run bossbar set mineraft:radar/locate_distance value 0
execute if score @s receiver_linked matches 1.. as @e[type=marker,tag=receiver_active] if score @s receiver_id = @p receiver_linked if score @s receiver_has_battery matches 0 run return 0

execute if score @s radar_target matches 1 run execute store result score @s locate_distance_1 run locate structure mineraft:large_island
execute if score @s radar_target matches 1 run execute store result score @s locate_distance_2 run locate structure mineraft:large_island_var_1
execute if score @s radar_target matches 1 run execute store result score @s locate_distance_3 run locate structure mineraft:large_island_var_2
execute if score @s radar_target matches 1 run scoreboard players operation @s locate_distance = @s locate_distance_1
execute if score @s radar_target matches 1 if score @s locate_distance_2 < @s locate_distance run scoreboard players operation @s locate_distance = @s locate_distance_2
execute if score @s radar_target matches 1 if score @s locate_distance_3 < @s locate_distance run scoreboard players operation @s locate_distance = @s locate_distance_3

execute if score @s radar_target matches 2 run execute store result score @s locate_distance_1 run locate structure mineraft:small_tropical
execute if score @s radar_target matches 2 run execute store result score @s locate_distance_2 run locate structure mineraft:small_tropical_var_1
execute if score @s radar_target matches 2 run execute store result score @s locate_distance_3 run locate structure mineraft:small_tropical_var_2
execute if score @s radar_target matches 2 run scoreboard players operation @s locate_distance = @s locate_distance_1
execute if score @s radar_target matches 2 if score @s locate_distance_2 < @s locate_distance run scoreboard players operation @s locate_distance = @s locate_distance_2
execute if score @s radar_target matches 2 if score @s locate_distance_3 < @s locate_distance run scoreboard players operation @s locate_distance = @s locate_distance_3

execute if score @s radar_target matches 3 store result score @s locate_distance run locate structure mineraft:radio_tower

scoreboard players operation #temp locate_distance = @s locate_distance
execute if score #temp locate_distance matches 1001.. run scoreboard players set #temp locate_distance 1000

scoreboard players set #invert locate_distance 1000
scoreboard players operation #invert locate_distance -= #temp locate_distance

bossbar set mineraft:radar/locate_distance max 1000
bossbar set mineraft:radar/locate_distance players @s
bossbar set mineraft:radar/locate_distance style notched_20
bossbar set mineraft:radar/locate_distance color blue

execute if score @s radar_target matches 1 run bossbar set mineraft:radar/locate_distance name ["",{"text":"Nearest Large Island: ","color":"aqua"},{"score":{"name":"@s","objective":"locate_distance"},"color":"red"},{"text":" blocks","color":"aqua"}]
execute if score @s radar_target matches 2 run bossbar set mineraft:radar/locate_distance name ["",{"text":"Nearest Small Island: ","color":"aqua"},{"score":{"name":"@s","objective":"locate_distance"},"color":"red"},{"text":" blocks","color":"aqua"}]
execute if score @s radar_target matches 3 run bossbar set mineraft:radar/locate_distance name ["",{"text":"Nearest Radio Tower: ","color":"aqua"},{"score":{"name":"@s","objective":"locate_distance"},"color":"red"},{"text":" blocks","color":"aqua"}]

execute store result bossbar mineraft:radar/locate_distance value run scoreboard players get #invert locate_distance