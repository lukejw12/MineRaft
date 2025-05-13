
execute store result score #random temp run random value 0..100

execute if score #current weather.state matches 0 run function mineraft:weather/transitions/from_clear
execute if score #current weather.state matches 1 run function mineraft:weather/transitions/from_light_breeze
execute if score #current weather.state matches 2 run function mineraft:weather/transitions/from_storm
execute if score #current weather.state matches 3 run function mineraft:weather/transitions/from_heavy_storm

function mineraft:weather/update_data

scoreboard players set #transition weather.transition 60

execute store result score #random temp run random value 4000..12000
scoreboard players operation #timer weather.timer = #random temp