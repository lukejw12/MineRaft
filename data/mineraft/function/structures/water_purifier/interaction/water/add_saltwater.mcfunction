execute as @e[tag=mr.target_purifier] unless data entity @s {data:{state:"idle"}} run return fail

execute as @e[tag=mr.target_purifier] run data modify entity @s data.state set value "purifying"
execute as @e[tag=mr.target_purifier] run function mineraft:structures/water_purifier/models/purifying/update

execute as @a[tag=mr.interacting] if items entity @s weapon.mainhand *[custom_data~{mr.pail-saltwater:1b}] run item replace entity @s weapon.mainhand with stone[!food,consumable={consume_seconds:9999,animation:"block",sound:"intentionally_empty",has_consume_particles:false,on_consume_effects:[{type:"minecraft:play_sound",sound:"intentionally_empty"}]},custom_data={mr.pail-empty:1b},item_model="mineraft:items/crafting_materials/cup/empty_cup"]
execute as @a[tag=mr.interacting] if items entity @s weapon.offhand *[custom_data~{mr.pail-saltwater:1b}] run item replace entity @s weapon.offhand with stone[!food,consumable={consume_seconds:9999,animation:"block",sound:"intentionally_empty",has_consume_particles:false,on_consume_effects:[{type:"minecraft:play_sound",sound:"intentionally_empty"}]},custom_data={mr.pail-empty:1b},item_model="mineraft:items/crafting_materials/cup/empty_cup"]
