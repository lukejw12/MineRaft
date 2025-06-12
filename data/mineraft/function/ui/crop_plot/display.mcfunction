execute anchored eyes positioned ^ ^ ^ run function mineraft:ui/crop_plot/start_raycast
execute unless entity @e[tag=ui_target_crop_plot] run return 0
execute as @e[tag=ui_target_crop_plot,limit=1] run scoreboard players operation #temp crop_plot = @s crop_plot
execute as @e[type=marker,tag=crop_plot_active] if score @s crop_plot = #temp crop_plot run tag @s add ui_crop_plot

execute as @e[type=marker,tag=ui_crop_plot,limit=1] if entity @s[tag=growth_thatch] run function mineraft:ui/crop_plot/calculate_countdown
execute as @e[type=marker,tag=ui_crop_plot,limit=1] if entity @s[tag=growth_wheat] run function mineraft:ui/crop_plot/calculate_countdown
execute as @e[type=marker,tag=ui_crop_plot,limit=1] if entity @s[tag=growth_berry] run function mineraft:ui/crop_plot/calculate_countdown

execute as @e[tag=ui_target_crop_plot] run scoreboard players operation #temp_facade crop_plot = @s crop_plot
execute as @e[type=item_display,tag=crop_plot_facade] if score @s crop_plot = #temp_facade crop_plot if items entity @s contents *[minecraft:item_model="minecraft:small_crop_plot_thatch"] run scoreboard players set #crop_ready dummy 1
execute as @e[type=item_display,tag=crop_plot_facade] if score @s crop_plot = #temp_facade crop_plot if items entity @s contents *[minecraft:item_model="minecraft:small_crop_plot_wheat"] run scoreboard players set #crop_ready dummy 1
execute as @e[type=item_display,tag=crop_plot_facade] if score @s crop_plot = #temp_facade crop_plot if items entity @s contents *[minecraft:item_model="minecraft:small_crop_plot_sweet_berry"] run scoreboard players set #crop_ready dummy 1

execute as @e[type=item_display,tag=crop_plot_facade] if score @s crop_plot = #temp_facade crop_plot if items entity @s contents *[minecraft:item_model="minecraft:crop_plot_empty"] run scoreboard players set #crop_empty dummy 1

execute as @e[type=marker,tag=ui_crop_plot,limit=1] if entity @s[tag=growth_thatch] run scoreboard players set #crop_growing dummy 1
execute as @e[type=marker,tag=ui_crop_plot,limit=1] if entity @s[tag=growth_wheat] run scoreboard players set #crop_growing dummy 1
execute as @e[type=marker,tag=ui_crop_plot,limit=1] if entity @s[tag=growth_berry] run scoreboard players set #crop_growing dummy 1

execute if score #crop_ready dummy matches 1 if score #current weather.state matches 0 run function mineraft:ui/macros/display_actionbar {pot_section:'"},{"text":" | Ready!","color":"green', hydration_color:"aqua", weather_name:"Clear Skies", weather_color:"aqua"}
execute if score #crop_ready dummy matches 1 if score #current weather.state matches 1 run function mineraft:ui/macros/display_actionbar {pot_section:'"},{"text":" | Ready!","color":"green', hydration_color:"aqua", weather_name:"Light Breeze", weather_color:"blue"}
execute if score #crop_ready dummy matches 1 if score #current weather.state matches 2 run function mineraft:ui/macros/display_actionbar {pot_section:'"},{"text":" | Ready!","color":"green', hydration_color:"aqua", weather_name:"Storm", weather_color:"yellow"}
execute if score #crop_ready dummy matches 1 if score #current weather.state matches 3 run function mineraft:ui/macros/display_actionbar {pot_section:'"},{"text":" | Ready!","color":"green', hydration_color:"aqua", weather_name:"Heavy Storm", weather_color:"gold"}

execute if score #crop_empty dummy matches 1 if score #current weather.state matches 0 run function mineraft:ui/macros/display_actionbar {pot_section:'"},{"text":" | Empty","color":"red', hydration_color:"aqua", weather_name:"Clear Skies", weather_color:"aqua"}
execute if score #crop_empty dummy matches 1 if score #current weather.state matches 1 run function mineraft:ui/macros/display_actionbar {pot_section:'"},{"text":" | Empty","color":"red', hydration_color:"aqua", weather_name:"Light Breeze", weather_color:"blue"}
execute if score #crop_empty dummy matches 1 if score #current weather.state matches 2 run function mineraft:ui/macros/display_actionbar {pot_section:'"},{"text":" | Empty","color":"red', hydration_color:"aqua", weather_name:"Storm", weather_color:"yellow"}
execute if score #crop_empty dummy matches 1 if score #current weather.state matches 3 run function mineraft:ui/macros/display_actionbar {pot_section:'"},{"text":" | Empty","color":"red', hydration_color:"aqua", weather_name:"Heavy Storm", weather_color:"gold"}

execute if score #crop_growing dummy matches 1 if score #current weather.state matches 0 run function mineraft:ui/macros/display_actionbar {pot_section:'"},{"text":" | ","color":"gray"},{"score":{"name":"#minutes","objective":"dummy"},"color":"yellow"},{"text":":","color":"yellow"},{"score":{"name":"#seconds","objective":"dummy"},"color":"yellow"},{"text":" Remaining","color":"yellow', hydration_color:"aqua", weather_name:"Clear Skies", weather_color:"aqua"}
execute if score #crop_growing dummy matches 1 if score #current weather.state matches 1 run function mineraft:ui/macros/display_actionbar {pot_section:'"},{"text":" | ","color":"gray"},{"score":{"name":"#minutes","objective":"dummy"},"color":"yellow"},{"text":":","color":"yellow"},{"score":{"name":"#seconds","objective":"dummy"},"color":"yellow"},{"text":" Remaining","color":"yellow', hydration_color:"aqua", weather_name:"Light Breeze", weather_color:"blue"}
execute if score #crop_growing dummy matches 1 if score #current weather.state matches 2 run function mineraft:ui/macros/display_actionbar {pot_section:'"},{"text":" | ","color":"gray"},{"score":{"name":"#minutes","objective":"dummy"},"color":"yellow"},{"text":":","color":"yellow"},{"score":{"name":"#seconds","objective":"dummy"},"color":"yellow"},{"text":" Remaining","color":"yellow', hydration_color:"aqua", weather_name:"Storm", weather_color:"yellow"}
execute if score #crop_growing dummy matches 1 if score #current weather.state matches 3 run function mineraft:ui/macros/display_actionbar {pot_section:'"},{"text":" | ","color":"gray"},{"score":{"name":"#minutes","objective":"dummy"},"color":"yellow"},{"text":":","color":"yellow"},{"score":{"name":"#seconds","objective":"dummy"},"color":"yellow"},{"text":" Remaining","color":"yellow', hydration_color:"aqua", weather_name:"Heavy Storm", weather_color:"gold"}

scoreboard players set #crop_ready dummy 0
scoreboard players set #crop_empty dummy 0
scoreboard players set #crop_growing dummy 0

tag @e[tag=ui_crop_plot] remove ui_crop_plot
tag @e[tag=ui_target_crop_plot] remove ui_target_crop_plot