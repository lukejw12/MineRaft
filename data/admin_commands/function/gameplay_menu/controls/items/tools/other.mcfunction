tellraw @s [{"bold":true,"color":"red","italic":false,"text":"-- Other Tools --"}]
tellraw @s [{"bold":false,"color":"gold","italic":false,"text":"- Sturdy Rod "},"[",{"click_event":{"action":"run_command","command":"/give @s fishing_rod[item_model=\"minecraft:sturdy_rod\",item_name={translate:\"item.mineraft.sturdy_rod\",fallback:\"Sturdy Rod\"},max_damage=192,rarity=\"uncommon\"] 1"},"color":"green","text":"Receive"},{"color":"gold","text":"]"}]
tellraw @s [{"bold":false,"color":"red","italic":false,"text":"-----------------------"}]
tellraw @s [{"text":"[Back]","color":"gray","click_event":{"action":"run_command","command":"/function admin_commands:gameplay_menu/controls/items/tools/main"}}]
