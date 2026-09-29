scoreboard players operation #hb.id mr.data = @s mr.id
tag @s add mr.clicked
execute as @e[type=item_display,tag=mr.root,distance=..8] if score @s mr.id = #hb.id mr.data run tag @s add mr.target
scoreboard players set #hb.hammer mr.data 0
execute as @a[tag=mr.interacting,limit=1] if items entity @s weapon.mainhand *[custom_data~{mineraft:{id:"building_hammer"}}] run scoreboard players set #hb.hammer mr.data 1
execute if score #hb.hammer mr.data matches 1 run tag @a[tag=mr.interacting] add mr.breaker
execute if score #hb.hammer mr.data matches 1 as @e[type=item_display,tag=mr.target,limit=1] at @s run function mineraft:structure/break
$execute if score #hb.hammer mr.data matches 0 as @e[type=item_display,tag=mr.target,limit=1] at @s run function mineraft:structure/hook/run {h:"$(h)"}
tag @e[tag=mr.target] remove mr.target
tag @s remove mr.clicked
