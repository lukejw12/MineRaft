# File: functions/admin_commands/gameplay_menu/controls/items/main.mcfunction

tellraw @s [{"bold":true,"color":"red","italic":false,"text":"-- Items Menu --"}]
tellraw @s [{"bold":false,"color":"gold","italic":false,"text":"- Tools "},"[",{"click_event":{"action":"run_command","command":"/function admin_commands:gameplay_menu/controls/items/tools"},"color":"aqua","text":"Expand"},{"color":"gold","text":"]"}]
tellraw @s [{"bold":false,"color":"yellow","italic":false,"text":"- Misc "},"[",{"click_event":{"action":"run_command","command":"/function admin_commands:gameplay_menu/controls/items/misc"},"color":"aqua","text":"Expand"},{"color":"gold","text":"]"}]
tellraw @s [{"bold":false,"color":"gold","italic":false,"text":"- Crafting Materials "},"[",{"click_event":{"action":"run_command","command":"/function admin_commands:gameplay_menu/controls/items/crafting_materials"},"color":"aqua","text":"Expand"},{"color":"gold","text":"]"}]
tellraw @s [{"bold":false,"color":"yellow","italic":false,"text":"- Structure Items "},"[",{"click_event":{"action":"run_command","command":"/function admin_commands:gameplay_menu/controls/items/structure_items"},"color":"aqua","text":"Expand"},{"color":"gold","text":"]"}]
tellraw @s [{"bold":false,"color":"gold","italic":false,"text":"-"}]
tellraw @s [{"bold":false,"color":"yellow","italic":false,"text":"-"}]
tellraw @s [{"bold":false,"color":"gold","italic":false,"text":"-"}]
tellraw @s [{"bold":false,"color":"red","italic":false,"text":"-----------------------"}]
tellraw @s [{"text":"[Back]","color":"gray","click_event":{"action":"run_command","command":"/function admin_commands:gameplay_menu/settings"}}]