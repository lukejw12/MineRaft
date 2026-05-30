function mineraft:core/structure/cache_item
$execute as @e[type=item_display,tag=mr.foundation,tag=!mr.armored,distance=..2,limit=1,sort=nearest] at @s run function mineraft:items/foundation_armor/spawn {"model":"$(model)"}
execute as @e[type=item_display,tag=mr.placed,limit=1,sort=nearest] run function mineraft:core/structure/store_item
execute as @a if score @s mr.link = #player_link mr.data unless entity @s[gamemode=creative] run item modify entity @s weapon.mainhand mineraft:remove_one
tag @a[tag=mr.place_armor] remove mr.place_armor
playsound block.anvil.use block @a[distance=..10] ~ ~ ~ 100 2 1
