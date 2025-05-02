#execute store result score @s locate_distance run locate structure mineraft:small_tropical

#scoreboard players operation #temp locate_distance = @s locate_distance
#execute if score #temp locate_distance matches 1001.. run scoreboard players set #temp locate_distance 1000

#scoreboard players set #invert locate_distance 1000
#scoreboard players operation #invert locate_distance -= #temp locate_distance

#bossbar set mineraft:radar/locate_distance max 1000
#bossbar set mineraft:radar/locate_distance players @s
#bossbar set mineraft:radar/locate_distance style notched_20
#bossbar set mineraft:radar/locate_distance color blue
##bossbar set mineraft:radar/locate_distance name ["",{"text":"Nearest Island: ","color":"aqua"},{"score":{"name":"@s","objective":"locate_distance"},"color":"red"},{"text":" blocks","color":"aqua"}]

#execute store result bossbar mineraft:radar/locate_distance value run scoreboard players get #invert locate_distance
schedule clear mineraft:radar/holding_compass

# First, mark who has a compass
scoreboard players set @a player_has_compass 0
execute as @a if predicate mineraft:holding_compass run scoreboard players set @s player_has_compass 1

# Assign unique IDs to players
execute as @a[scores={player_has_compass=1}] unless score @s compass_id matches 1.. run scoreboard players add #global compass_id 1
execute as @a[scores={player_has_compass=1}] unless score @s compass_id matches 1.. run scoreboard players operation @s compass_id = #global compass_id

# Clear ID for players no longer holding a compass
execute as @a[scores={player_has_compass=0,compass_id=1..}] run scoreboard players reset @s compass_id

# Update the bossbar for players holding a compass
execute as @a[scores={player_has_compass=1}] at @s run function mineraft:radar/update_player