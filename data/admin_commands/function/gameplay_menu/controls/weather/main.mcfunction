
tellraw @s [{"bold":true,"color":"red","italic":false,"text":"-- Weather Controls --"}]
tellraw @s [{"bold":false,"color":"yellow","italic":false,"text":"- Clear Skies "},"[",{"click_event":{"action":"run_command","command":"/function admin_commands:gameplay_menu/controls/weather/set_clear"},"color":"green","text":"Set"},{"color":"gold","text":"]"}]
tellraw @s [{"bold":false,"color":"gold","italic":false,"text":"- Light Breeze "},"[",{"click_event":{"action":"run_command","command":"/function admin_commands:gameplay_menu/controls/weather/set_light_breeze"},"color":"green","text":"Set"},{"color":"gold","text":"]"}]
tellraw @s [{"bold":false,"color":"yellow","italic":false,"text":"- Storm "},"[",{"click_event":{"action":"run_command","command":"/function admin_commands:gameplay_menu/controls/weather/set_storm"},"color":"green","text":"Set"},{"color":"gold","text":"]"}]
tellraw @s [{"bold":false,"color":"gold","italic":false,"text":"- Heavy Storm "},"[",{"click_event":{"action":"run_command","command":"/function admin_commands:gameplay_menu/controls/weather/set_heavy_storm"},"color":"green","text":"Set"},{"color":"gold","text":"]"}]
tellraw @s [{"bold":false,"color":"red","italic":false,"text":"-----------------------"}]
tellraw @s [{"text":"[Back]","color":"gray","click_event":{"action":"run_command","command":"/function admin_commands:gameplay_menu/settings"}}]