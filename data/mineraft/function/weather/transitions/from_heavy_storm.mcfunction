# From Heavy Storm: 50% Clear, 20% Light Breeze, 55% Storm, 20% Stay Heavy Storm
execute if score #random temp matches 0..50 run scoreboard players set #current weather.state 0
execute if score #random temp matches 51..73 run scoreboard players set #current weather.state 1
execute if score #random temp matches 74..79 run scoreboard players set #current weather.state 2
execute if score #random temp matches 80..100 run scoreboard players set #current weather.state 3