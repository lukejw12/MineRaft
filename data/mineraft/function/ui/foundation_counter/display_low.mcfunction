execute anchored eyes positioned ^ ^ ^ run function mineraft:ui/foundation_counter/start_raycast
execute unless entity @e[tag=ui_target_counter] run return 0

scoreboard players set #temp_foundations dummy 0
execute as @e[type=marker,tag=raft_extension] run scoreboard players add #temp_foundations dummy 1

execute if score #current weather.state matches 0 run function mineraft:ui/macros/display_actionbar {pot_section:'"},{"text":" | Foundations: ","color":"gray"},{"score":{"name":"#temp_foundations","objective":"dummy"},"color":"aqua', hydration_color:"red", weather_name:"Clear Skies", weather_color:"aqua"}
execute if score #current weather.state matches 1 run function mineraft:ui/macros/display_actionbar {pot_section:'"},{"text":" | Foundations: ","color":"gray"},{"score":{"name":"#temp_foundations","objective":"dummy"},"color":"aqua', hydration_color:"red", weather_name:"Light Breeze", weather_color:"blue"}
execute if score #current weather.state matches 2 run function mineraft:ui/macros/display_actionbar {pot_section:'"},{"text":" | Foundations: ","color":"gray"},{"score":{"name":"#temp_foundations","objective":"dummy"},"color":"aqua', hydration_color:"red", weather_name:"Storm", weather_color:"yellow"}
execute if score #current weather.state matches 3 run function mineraft:ui/macros/display_actionbar {pot_section:'"},{"text":" | Foundations: ","color":"gray"},{"score":{"name":"#temp_foundations","objective":"dummy"},"color":"aqua', hydration_color:"red", weather_name:"Heavy Storm", weather_color:"gold"}

tag @e[tag=ui_target_counter] remove ui_target_counter