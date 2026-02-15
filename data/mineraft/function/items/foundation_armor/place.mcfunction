$execute as @e[type=item_display,tag=mr.foundation,tag=!mr.armored,distance=..2,limit=1,sort=nearest] at @s run function mineraft:items/foundation_armor/spawn {"model":"$(model)"}
execute as @a if score @s mr.link = #player_link mr.data run item modify entity @s weapon.mainhand mineraft:remove_one
tag @a[tag=mr.place_armor] remove mr.place_armor
playsound block.anvil.use block @a[distance=..10] ~ ~ ~ 100 2 1