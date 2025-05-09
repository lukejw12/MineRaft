execute on target run clear @s minecraft:bowl 1
scoreboard players set #total_nutrition cooking_pot 2
scoreboard players set #total_saturation cooking_pot 1
execute if data entity @s data.Ingredients[{Type:"Nutrition"}] run function mineraft:raft_utility/cooking_pot/cooking/calculate_nutrition
data modify storage minecraft:cooking_pot StewName set value ""
function mineraft:raft_utility/cooking_pot/cooking/create_stew_name
data modify storage minecraft:cooking_pot Effects set value []
function mineraft:raft_utility/cooking_pot/cooking/calculate_effects
execute store result storage minecraft:cooking_pot nutrition int 1 run scoreboard players get #total_nutrition cooking_pot
execute store result storage minecraft:cooking_pot saturation int 1 run scoreboard players get #total_saturation cooking_pot
function mineraft:raft_utility/cooking_pot/cooking/give_stew with storage minecraft:cooking_pot
function mineraft:raft_utility/cooking_pot/cooking/apply_effects
scoreboard players set @s cooking_time 0
scoreboard players set @s cooking 0
scoreboard players set @s ingredient_count 0
data modify entity @s data.Ingredients set value []
tag @s remove ready
item modify entity @e[type=item_display,distance=..1,limit=1,sort=nearest,tag=cooking_pot_facade] contents {function:"set_components",components:{"minecraft:item_model":"minecraft:cooking_pot_empty"}}
playsound minecraft:item.bottle.fill master @a[distance=..10] ~ ~ ~ 1 1