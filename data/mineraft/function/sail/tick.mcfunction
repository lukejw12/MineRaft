function mineraft:sail/offset
execute as @a at @s if items entity @s weapon.mainhand *[custom_data~{mineraft:{place:{}}}] run function mineraft:place/held
