data modify entity @s Motion set from storage mineraft:tmp co.motion
data modify entity @s Item set value {id:"minecraft:snowball",count:1,components:{"minecraft:item_model":"raft_items:crop/coconut_fruit"}}
data modify entity @s Owner set from storage mineraft:tmp co.owner
tag @s add mr.coco_new
execute summon item_display run function mineraft:item/coconut/rider
tag @s remove mr.coco_new
