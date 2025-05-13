# From Clear Skies: 70% Light Breeze, 20% Stay Clear, 10% Storm
execute if score #random temp matches 0..19 run scoreboard players set #current weather.state 0
execute if score #random temp matches 20..89 run scoreboard players set #current weather.state 1
execute if score #random temp matches 90..99 run scoreboard players set #current weather.state 2
execute if score #random temp matches 100 run scoreboard players set #current weather.state 3