# From Storm: 15% Clear, 30% Light Breeze, 35% Stay Storm, 20% Heavy Storm
execute if score #random temp matches 0..14 run scoreboard players set #current weather.state 0
execute if score #random temp matches 15..44 run scoreboard players set #current weather.state 1
execute if score #random temp matches 45..79 run scoreboard players set #current weather.state 2
execute if score #random temp matches 80..100 run scoreboard players set #current weather.state 3