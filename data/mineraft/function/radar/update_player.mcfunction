# Function: mineraft:radar/update_player
# Store distances to each variant
execute store result score @s locate_distance_1 run locate structure mineraft:small_tropical
execute store result score @s locate_distance_2 run locate structure mineraft:small_tropical_var_1
execute store result score @s locate_distance_3 run locate structure mineraft:small_tropical_var_2

# Find minimum distance
scoreboard players operation @s locate_distance = @s locate_distance_1
execute if score @s locate_distance_2 < @s locate_distance run scoreboard players operation @s locate_distance = @s locate_distance_2
execute if score @s locate_distance_3 < @s locate_distance run scoreboard players operation @s locate_distance = @s locate_distance_3

# The rest is the same as your original code
scoreboard players operation #temp locate_distance = @s locate_distance
execute if score #temp locate_distance matches 1001.. run scoreboard players set #temp locate_distance 1000

scoreboard players set #invert locate_distance 1000
scoreboard players operation #invert locate_distance -= #temp locate_distance

bossbar set mineraft:radar/locate_distance max 1000
bossbar set mineraft:radar/locate_distance players @s
bossbar set mineraft:radar/locate_distance style notched_20
bossbar set mineraft:radar/locate_distance color blue
bossbar set mineraft:radar/locate_distance name ["",{"text":"Nearest Island: ","color":"aqua"},{"score":{"name":"@s","objective":"locate_distance"},"color":"red"},{"text":" blocks","color":"aqua"}]

execute store result bossbar mineraft:radar/locate_distance value run scoreboard players get #invert locate_distance