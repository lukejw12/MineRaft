scoreboard players add @s mr.purifier_timer 1
scoreboard players operation #purifier_id mr.data = @s mr.purifier_id
scoreboard players set #has_fire mr.data 0
execute as @e[tag=mr.purifier_fire,limit=1] if score @s mr.purifier_id = #purifier_id mr.data run scoreboard players set #has_fire mr.data 1

execute if score @s mr.purifier_timer matches 20.. run function mineraft:structures/water_purifier/processing/process_second
execute if score @s mr.purifier_fuel matches 1.. if score #has_fire mr.data matches 0 run function mineraft:structures/water_purifier/fire/spawn
