# File: functions/admin_commands/admin_menu.mcfunction

tellraw @s [{"bold":false,"color":"red","italic":false,"text":"-- Gameplay Settings --"}]
tellraw @s [{"bold":false,"color":"gold","italic":false,"text":"- Restrict Ocean Block Placements "},"[",{"click_event":{"action":"run_command","command":"/function admin_commands:gameplay_menu/controls/ocean/enable"},"color":"green","text":"Enable"},{"color":"gold","text":"/"},{"click_event":{"action":"run_command","command":"/function admin_commands:gameplay_menu/controls/ocean/disable"},"color":"red","text":"Disable"},{"color":"gold","text":"]"}]
tellraw @s [{"bold":false,"color":"yellow","italic":false,"text":"- Hammer Confirmation Message "},"[",{"click_event":{"action":"run_command","command":"/function admin_commands:gameplay_menu/controls/hammer/enable"},"color":"green","text":"Enable"},{"color":"gold","text":"/"},{"click_event":{"action":"run_command","command":"/function admin_commands:gameplay_menu/controls/hammer/disable"},"color":"red","text":"Disable"},{"color":"gold","text":"]"}]
tellraw @s [{"bold":false,"color":"gold","italic":false,"text":"- Items "},"[",{"click_event":{"action":"run_command","command":"/function admin_commands:gameplay_menu/controls/items/main"},"color":"aqua","text":"Expand"},{"color":"gold","text":"]"}]
tellraw @s [{"bold":false,"color":"yellow","italic":false,"text":"-"}]
tellraw @s [{"bold":false,"color":"gold","italic":false,"text":"-"}]
tellraw @s [{"bold":false,"color":"yellow","italic":false,"text":"-"}]
tellraw @s [{"bold":false,"color":"gold","italic":false,"text":"-"}]
tellraw @s [{"bold":false,"color":"yellow","italic":false,"text":"-"}]
tellraw @s [{"bold":false,"color":"red","italic":false,"text":"-----------------------"}]