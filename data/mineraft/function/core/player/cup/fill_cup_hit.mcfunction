execute as @a[tag=mr.fill_water,sort=nearest] if items entity @s weapon.mainhand *[custom_data~{mr.pail-empty:1b}] run item replace entity @s weapon.mainhand with stone[custom_data={mr.pail-saltwater:1b},item_model="mineraft:items/crafting_materials/cup/saltwater_cup"]
execute as @a[tag=mr.fill_water,sort=nearest] if items entity @s weapon.offhand *[custom_data~{mr.pail-empty:1b}] run item replace entity @s weapon.offhand with stone[custom_data={mr.pail-saltwater:1b},item_model="mineraft:items/crafting_materials/cup/saltwater_cup"]

particle splash ~ ~ ~ 0.2 0.2 0.2 0 10
tag @a[tag=mr.fill_water,sort=nearest] remove mr.fill_water
kill @s