execute as @e[type=marker,tag=cooking_pot_active,sort=nearest,limit=1,distance=..3] run scoreboard players operation #temp_ingredients dummy = @s ingredient_count

execute if score #temp_ingredients dummy matches 3 run data modify storage mineraft:ui pot_section set value [{"text":" | ","color":"gray"},{"text":"Pot: ","color":"gray"},{"score":{"name":"#temp_ingredients","objective":"dummy"},"color":"green"},{"text":"/3","color":"green"}]
execute unless score #temp_ingredients dummy matches 3 run data modify storage mineraft:ui pot_section set value [{"text":" | ","color":"gray"},{"text":"Pot: ","color":"gray"},{"score":{"name":"#temp_ingredients","objective":"dummy"},"color":"white"},{"text":"/3","color":"gray"}]

function mineraft:ui/macros/display_actionbar {pot_section:"${mineraft:ui.pot_section}", hydration_color:"${mineraft:ui.hydration_color}", weather_name:"${mineraft:ui.weather.name}", weather_color:"${mineraft:ui.weather.color}"}