data modify entity @s data.state set value "idle"

data modify storage mineraft:cup cup_type set from entity @a[tag=mr.interacting,limit=1] SelectedItem.components.minecraft:custom_data."mr.cup_type"

execute as @a[tag=mr.interacting] if items entity @s weapon.mainhand *[custom_data~{mr.pail-empty:1b}] run function mineraft:items/cups/purifier_collect_main
execute as @a[tag=mr.interacting] if items entity @s weapon.offhand *[custom_data~{mr.pail-empty:1b}] run function mineraft:items/cups/purifier_collect_off

function mineraft:structures/water_purifier/models/idle/update

playsound minecraft:entity.item.pickup player @a[tag=mr.interacting] ~ ~ ~ 1 1