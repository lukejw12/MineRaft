$give @a mushroom_stew[item_name=$(final_name),consumable={consume_seconds:1,on_consume_effects:[{type:"minecraft:apply_effects",effects:$(effects),probability:1}]},food={nutrition:$(nutrition),saturation:$(saturation)},lore=[{"text":"Nutrition: $(nutrition)","color":"green","italic":false},{"text":"Saturation: $(saturation)","color":"green","italic":false},$(final_effect)]]
$say $(final_name)
$say $(nutrition)
$say $(saturation)
$say $(effects)