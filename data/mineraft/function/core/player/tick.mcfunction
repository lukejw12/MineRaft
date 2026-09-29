execute unless score @s mr.link matches 1.. run function mineraft:core/player/join
execute unless score #raft_init mr.data matches 1 run function mineraft:world/init
scoreboard players remove @s[scores={mr.cd=1..}] mr.cd 1
execute unless score #sp.sailing sp.data matches 1 if items entity @s weapon.mainhand *[custom_data~{mineraft:{place:{}}}] run function mineraft:place/held
execute if entity @s[tag=mr.has_preview] unless items entity @s weapon.mainhand *[custom_data~{mineraft:{place:{}}}] run function mineraft:place/preview/clear
execute if items entity @s weapon.mainhand *[custom_data~{mineraft:{id:"building_hammer"}}] run function mineraft:item/hammer/held
execute if entity @s[tag=mr.hammer_aiming] unless items entity @s weapon.mainhand *[custom_data~{mineraft:{id:"building_hammer"}}] run function mineraft:item/hammer/clear
execute unless score #sp.sailing sp.data matches 1 if items entity @s saddle *[custom_data~{sp_carry:1b}] run item replace entity @s saddle with air
execute if score @s mr.coco matches 1.. unless score @s mr.coco_on matches 1 run function mineraft:item/coconut/release
scoreboard players set @s mr.coco_on 0
