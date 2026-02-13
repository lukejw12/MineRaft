advancement revoke @s only mineraft:core/player/fill_cup
execute if entity @s[tag=mr.just_drank] run return fail
execute unless items entity @s weapon.mainhand *[custom_data~{mr.pail-empty:1b}] unless items entity @s weapon.mainhand *[custom_data~{mr.filled_cup:1b,mr.water_type:"saltwater"}] run return fail
tag @s add mr.fill_water
execute at @s anchored eyes positioned ^ ^ ^ anchored feet run function mineraft:core/player/cup/fill_cup_raycast