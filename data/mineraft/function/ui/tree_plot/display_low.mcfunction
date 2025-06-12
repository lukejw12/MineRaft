execute anchored eyes positioned ^ ^ ^ run function mineraft:ui/tree_plot/start_raycast
execute unless entity @e[tag=ui_target_tree_plot] run return 0
execute as @e[tag=ui_target_tree_plot,limit=1] run scoreboard players operation #temp tree_plot = @s tree_plot
execute as @e[type=marker,tag=tree_plot_active] if score @s tree_plot = #temp tree_plot run tag @s add ui_tree_plot

execute as @e[type=marker,tag=ui_tree_plot,limit=1] if entity @s[tag=growth] run function mineraft:ui/tree_plot/calculate_countdown

execute as @e[tag=ui_target_tree_plot] run scoreboard players operation #temp_facade tree_plot = @s tree_plot
execute as @e[type=item_display,tag=tree_plot_facade] if score @s tree_plot = #temp_facade tree_plot if items entity @s contents *[minecraft:item_model="minecraft:grown_tree_crop_plot"] run scoreboard players set #tree_ready dummy 1

execute as @e[type=item_display,tag=tree_plot_facade] if score @s tree_plot = #temp_facade tree_plot if items entity @s contents *[minecraft:item_model="minecraft:tree_crop_plot"] run scoreboard players set #tree_empty dummy 1

execute as @e[type=marker,tag=ui_tree_plot,limit=1] if entity @s[tag=growth] run scoreboard players set #tree_growing dummy 1

execute if score #tree_ready dummy matches 1 if score #current weather.state matches 0 run function mineraft:ui/macros/display_actionbar {pot_section:'"},{"text":" | Ready!","color":"green', hydration_color:"red", weather_name:"Clear Skies", weather_color:"aqua"}
execute if score #tree_ready dummy matches 1 if score #current weather.state matches 1 run function mineraft:ui/macros/display_actionbar {pot_section:'"},{"text":" | Ready!","color":"green', hydration_color:"red", weather_name:"Light Breeze", weather_color:"blue"}
execute if score #tree_ready dummy matches 1 if score #current weather.state matches 2 run function mineraft:ui/macros/display_actionbar {pot_section:'"},{"text":" | Ready!","color":"green', hydration_color:"red", weather_name:"Storm", weather_color:"yellow"}
execute if score #tree_ready dummy matches 1 if score #current weather.state matches 3 run function mineraft:ui/macros/display_actionbar {pot_section:'"},{"text":" | Ready!","color":"green', hydration_color:"red", weather_name:"Heavy Storm", weather_color:"gold"}

execute if score #tree_empty dummy matches 1 if score #current weather.state matches 0 run function mineraft:ui/macros/display_actionbar {pot_section:'"},{"text":" | Empty","color":"red', hydration_color:"red", weather_name:"Clear Skies", weather_color:"aqua"}
execute if score #tree_empty dummy matches 1 if score #current weather.state matches 1 run function mineraft:ui/macros/display_actionbar {pot_section:'"},{"text":" | Empty","color":"red', hydration_color:"red", weather_name:"Light Breeze", weather_color:"blue"}
execute if score #tree_empty dummy matches 1 if score #current weather.state matches 2 run function mineraft:ui/macros/display_actionbar {pot_section:'"},{"text":" | Empty","color":"red', hydration_color:"red", weather_name:"Storm", weather_color:"yellow"}
execute if score #tree_empty dummy matches 1 if score #current weather.state matches 3 run function mineraft:ui/macros/display_actionbar {pot_section:'"},{"text":" | Empty","color":"red', hydration_color:"red", weather_name:"Heavy Storm", weather_color:"gold"}

execute if score #tree_growing dummy matches 1 if score #current weather.state matches 0 run function mineraft:ui/macros/display_actionbar {pot_section:'"},{"text":" | ","color":"gray"},{"score":{"name":"#minutes","objective":"dummy"},"color":"yellow"},{"text":":","color":"yellow"},{"score":{"name":"#seconds","objective":"dummy"},"color":"yellow"},{"text":" Remaining","color":"yellow', hydration_color:"red", weather_name:"Clear Skies", weather_color:"aqua"}
execute if score #tree_growing dummy matches 1 if score #current weather.state matches 1 run function mineraft:ui/macros/display_actionbar {pot_section:'"},{"text":" | ","color":"gray"},{"score":{"name":"#minutes","objective":"dummy"},"color":"yellow"},{"text":":","color":"yellow"},{"score":{"name":"#seconds","objective":"dummy"},"color":"yellow"},{"text":" Remaining","color":"yellow', hydration_color:"red", weather_name:"Light Breeze", weather_color:"blue"}
execute if score #tree_growing dummy matches 1 if score #current weather.state matches 2 run function mineraft:ui/macros/display_actionbar {pot_section:'"},{"text":" | ","color":"gray"},{"score":{"name":"#minutes","objective":"dummy"},"color":"yellow"},{"text":":","color":"yellow"},{"score":{"name":"#seconds","objective":"dummy"},"color":"yellow"},{"text":" Remaining","color":"yellow', hydration_color:"red", weather_name:"Storm", weather_color:"yellow"}
execute if score #tree_growing dummy matches 1 if score #current weather.state matches 3 run function mineraft:ui/macros/display_actionbar {pot_section:'"},{"text":" | ","color":"gray"},{"score":{"name":"#minutes","objective":"dummy"},"color":"yellow"},{"text":":","color":"yellow"},{"score":{"name":"#seconds","objective":"dummy"},"color":"yellow"},{"text":" Remaining","color":"yellow', hydration_color:"red", weather_name:"Heavy Storm", weather_color:"gold"}

scoreboard players set #tree_ready dummy 0
scoreboard players set #tree_empty dummy 0
scoreboard players set #tree_growing dummy 0

tag @e[tag=ui_tree_plot] remove ui_tree_plot
tag @e[tag=ui_target_tree_plot] remove ui_target_tree_plot