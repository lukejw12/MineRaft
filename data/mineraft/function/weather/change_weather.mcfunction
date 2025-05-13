execute store result score #random temp run random value 0..100
execute if score #random temp matches 0..39 run scoreboard players set #current weather.state 0
execute if score #random temp matches 40..69 run scoreboard players set #current weather.state 1
execute if score #random temp matches 70..89 run scoreboard players set #current weather.state 2
execute if score #random temp matches 90..100 run scoreboard players set #current weather.state 3

function mineraft:weather/update_data

scoreboard players set #transition weather.transition 60

execute store result score #random temp run random value 4000..12000
scoreboard players operation #timer weather.timer = #random temp