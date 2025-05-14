
scoreboard players set #current weather.state 3
scoreboard players set #resource_multiplier resource_delay 4
scoreboard players set #timer weather.timer 1
function mineraft:weather/update_data
tellraw @s {"bold":false,"color":"gold","italic":false,"text":"Weather set to Heavy Storm"}