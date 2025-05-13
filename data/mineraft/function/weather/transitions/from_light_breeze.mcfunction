# From Light Breeze: 30% Clear, 40% Stay Light Breeze, 25% Storm, 5% Heavy Storm
execute if score #random temp matches 0..29 run scoreboard players set #current weather.state 0
execute if score #random temp matches 30..69 run scoreboard players set #current weather.state 1
execute if score #random temp matches 70..94 run scoreboard players set #current weather.state 2
execute if score #random temp matches 95..100 run scoreboard players set #current weather.state 3