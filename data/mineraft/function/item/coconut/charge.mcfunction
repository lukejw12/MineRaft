advancement revoke @s only mineraft:item/coconut/charge
scoreboard players add @s mr.coco 1
scoreboard players set @s mr.coco_on 1
execute if score @s mr.coco matches 20 at @s run playsound minecraft:item.crossbow.loading_end player @s ~ ~ ~ 0.7 1.4
