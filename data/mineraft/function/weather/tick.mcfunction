scoreboard players add #timer weather.timer 1

execute if score #timer weather.timer matches 12000.. run function mineraft:weather/change_weather

execute if score #current weather.state matches 0 run function mineraft:weather/states/clear
execute if score #current weather.state matches 1 run function mineraft:weather/states/light_breeze
execute if score #current weather.state matches 2 run function mineraft:weather/states/storm
execute if score #current weather.state matches 3 run function mineraft:weather/states/heavy_storm

execute if score #transition weather.transition matches 1.. run function mineraft:weather/transition_effects