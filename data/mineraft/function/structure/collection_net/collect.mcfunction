$data modify entity @s data.items append value "$(type)"
data modify entity @s data.display_items append from entity @e[type=item,tag=mr.flotsam,distance=..2,sort=nearest,limit=1] Item
scoreboard players add @s mr.count 1
kill @e[type=item,tag=mr.flotsam,distance=..2,sort=nearest,limit=1]
function mineraft:structure/collection_net/display
playsound block.cobweb.fall block @a ~ ~ ~ 0.5 0.8
