execute as @e[type=marker,tag=cooking_pot_active,sort=nearest,limit=1,distance=..3] run scoreboard players operation #temp_ingredients dummy = @s ingredient_count

execute if score #temp_ingredients dummy matches 3 run data modify storage mineraft:ui pot_ready set value {color:"green", suffix:"green"}
execute unless score #temp_ingredients dummy matches 3 run data modify storage mineraft:ui pot_ready set value {color:"white", suffix:"gray"}

data modify storage mineraft:ui pot_section set value {"text":" | ","color":"gray"}
data modify storage mineraft:ui pot_section set value [{"text":" | ","color":"gray"},{"text":"Pot: ","color":"gray"},{"score":{"name":"#temp_ingredients","objective":"dummy"},"color":"${mineraft:ui.pot_ready.color}"},{"text":"/3","color":"${mineraft:ui.pot_ready.suffix}"}]

function mineraft:ui/macros/display_actionbar {pot_section:"${mineraft:ui.pot_section}", hydration_color:"${mineraft:ui.hydration_color}", weather_name:"${mineraft:weather.current.name}", weather_color:"${mineraft:weather.current.color}"}