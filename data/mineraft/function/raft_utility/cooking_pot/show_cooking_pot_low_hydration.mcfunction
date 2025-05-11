
execute as @e[type=marker,tag=cooking_pot_active,sort=nearest,limit=1,distance=..3] run scoreboard players operation #temp_ingredients dummy = @s ingredient_count

execute if score #temp_ingredients dummy matches 3 run title @s actionbar [{"color":"red","text":"Hydration: "},{"score":{"name":"@s","objective":"hydration"},"color":"red"},{"text":" | ","color":"gray"},{"text":"Pot: ","color":"gray"},{"score":{"name":"#temp_ingredients","objective":"dummy"},"color":"green"},{"text":"/3","color":"green"}]

execute unless score #temp_ingredients dummy matches 3 run title @s actionbar [{"color":"red","text":"Hydration: "},{"score":{"name":"@s","objective":"hydration"},"color":"red"},{"text":" | ","color":"gray"},{"text":"Pot: ","color":"gray"},{"score":{"name":"#temp_ingredients","objective":"dummy"},"color":"white"},{"text":"/3","color":"gray"}]