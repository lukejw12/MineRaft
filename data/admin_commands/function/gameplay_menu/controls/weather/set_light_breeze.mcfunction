
scoreboard players set #current weather.state 1
scoreboard players set #resource_multiplier resource_delay 2
scoreboard players set #timer weather.timer 1
function mineraft:weather/update_data
tellraw @s {"bold":false,"color":"blue","italic":false,"text":"Weather set to Light Breeze"}