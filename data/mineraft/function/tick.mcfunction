execute as @a at @s run function mineraft:core/player/tick
execute as @e[type=item_display,tag=mr.ticking] at @s run function mineraft:structure/tick
execute as @e[type=item,tag=mr.flotsam] at @s run function mineraft:world/flotsam/tick
execute as @e[type=armor_stand,tag=mr.shark] at @s run function mineraft:world/shark/core/tick
execute as @e[type=marker,tag=mr.spawn,limit=1] at @s run function mineraft:world/flotsam/core/tick
execute if entity @e[type=item_display,tag=mr.falling,limit=1] run function mineraft:structure/fall/tick
scoreboard players add #tick mr.data 1
execute if score #tick mr.data matches 40.. run function mineraft:structure/integrity/scan
function mineraft:place/preview/tick
execute as @e[type=item_display,tag=mr.coco_rider] at @s run function mineraft:item/coconut/rider_tick
function mineraft:admin/tick
function sailing_physics:core/tick
execute if score #sp.sailing sp.data matches 1 run function mineraft:sail/tick
function mineraft:hook/core/tick
