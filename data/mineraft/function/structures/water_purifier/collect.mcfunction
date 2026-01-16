data modify entity @s data.state set value "idle"

execute as @a[tag=mr.interacting] if items entity @s weapon.mainhand *[custom_data~{mr.pail-empty:1b}] run item replace entity @s weapon.mainhand with stone[custom_data={mr.pail-freshwater:1b},item_model="mineraft:items/crafting_materials/cup/freshwater_cup"]
execute as @a[tag=mr.interacting] if items entity @s weapon.offhand *[custom_data~{mr.pail-empty:1b}] run item replace entity @s weapon.offhand with stone[custom_data={mr.pail-freshwater:1b},item_model="mineraft:items/crafting_materials/cup/freshwater_cup"]

function mineraft:structures/water_purifier/update_model_idle

playsound minecraft:entity.item.pickup player @a[tag=mr.interacting] ~ ~ ~ 1 1
