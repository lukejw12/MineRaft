
scoreboard players set #current weather.state 0
scoreboard players set #resource_multiplier resource_delay 1
scoreboard players set #timer weather.timer 1
function mineraft:weather/update_data
tellraw @s {"bold":false,"color":"aqua","italic":false,"text":"Weather set to Clear Skies"}