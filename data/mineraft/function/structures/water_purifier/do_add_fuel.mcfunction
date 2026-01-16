scoreboard players operation @s mr.purifier_fuel += #fuel_value mr.data

function mineraft:structures/water_purifier/update_fuel_display

execute as @a[tag=mr.interacting] run item modify entity @s weapon.mainhand {function:"set_count",count:-1,add:true}

