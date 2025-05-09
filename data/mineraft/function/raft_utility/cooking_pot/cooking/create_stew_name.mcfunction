data modify storage minecraft:cooking_pot Descriptors set value []
execute if data entity @s data.Ingredients[{Descriptor:"Filling"}] run data modify storage minecraft:cooking_pot Descriptors append value "Filling "
execute if data entity @s data.Ingredients[{Descriptor:"Nourishing"}] run data modify storage minecraft:cooking_pot Descriptors append value "Nourishing "
execute if data entity @s data.Ingredients[{Descriptor:"Hearty"}] run data modify storage minecraft:cooking_pot Descriptors append value "Hearty "
execute if data entity @s data.Ingredients[{Descriptor:"Sweet"}] run data modify storage minecraft:cooking_pot Descriptors append value "Sweet "
execute if data entity @s data.Ingredients[{Descriptor:"Savory"}] run data modify storage minecraft:cooking_pot Descriptors append value "Savory "
execute if data entity @s data.Ingredients[{Descriptor:"Wholesome"}] run data modify storage minecraft:cooking_pot Descriptors append value "Wholesome "
execute if data storage minecraft:cooking_pot Descriptors[0] run data modify storage minecraft:cooking_pot StewName set from storage minecraft:cooking_pot Descriptors[0]
execute if data storage minecraft:cooking_pot Descriptors[1] run data modify storage minecraft:cooking_pot StewName set value '{"text":"","extra":[{"storage":"minecraft:cooking_pot","nbt":"StewName"},{"storage":"minecraft:cooking_pot","nbt":"Descriptors[1]"}]}'
execute if data storage minecraft:cooking_pot Descriptors[2] run data modify storage minecraft:cooking_pot StewName set value '{"text":"","extra":[{"storage":"minecraft:cooking_pot","nbt":"StewName","interpret":true},{"storage":"minecraft:cooking_pot","nbt":"Descriptors[2]"}]}'