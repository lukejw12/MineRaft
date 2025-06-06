scoreboard players operation #temp recycler_id = @e[type=marker,tag=recycler_active,sort=nearest,limit=1,distance=..3] recycler_id
execute as @e[type=marker,tag=recycler_active] if score @s recycler_id = #temp recycler_id run tag @s add ui_recycler

execute as @e[type=marker,tag=ui_recycler,limit=1] if score @s has_battery matches 0 run function mineraft:ui/macros/display_actionbar {pot_section:" | Capacity: 0/20 | Battery: 0/1 Uses: 0/5", hydration_color:"red", weather_name:"Clear Skies", weather_color:"gray"}

execute as @e[type=marker,tag=ui_recycler,limit=1] if score @s recycler_state matches 1 run function mineraft:ui/macros/display_actionbar_recycler {recycler_section:"Processing...", recycler_color:"yellow", battery_count:"@s", battery_uses:"@s", hydration_color:"red", weather_name:"Clear Skies", weather_color:"aqua"}

execute as @e[type=marker,tag=ui_recycler,limit=1] if score @s recycler_state matches 2 run function mineraft:ui/macros/display_actionbar_recycler {recycler_section:"Ready! Click to collect", recycler_color:"green", battery_count:"@s", battery_uses:"@s", hydration_color:"red", weather_name:"Clear Skies", weather_color:"aqua"}

execute as @e[type=marker,tag=ui_recycler,limit=1] if score @s recycler_state matches 0 if score @s has_battery matches 1 run function mineraft:ui/macros/display_actionbar_recycler_capacity {capacity_count:"@s", battery_count:"@s", battery_uses:"@s", hydration_color:"red", weather_name:"Clear Skies", weather_color:"aqua"}

tag @e[tag=ui_recycler] remove ui_recycler