scoreboard players operation @s mr.fill += #rc.value mr.data
execute if score @s mr.fill matches 601.. run scoreboard players set @s mr.fill 600
playsound minecraft:block.composter.fill block @a ~ ~ ~ 1 1
particle item{item:{id:"minecraft:clay_ball"}} ~ ~0.8 ~ 0.15 0.15 0.15 0.02 8
execute if score @s mr.fill matches 150.. if data entity @s {data:{state:"idle"}} run data modify entity @s data.state set value "recycling"
execute if data entity @s {data:{state:"recycling"}} if data entity @s {data:{has_battery:1b}} run function mineraft:structure/recycler/model/active with entity @s data
execute if data entity @s {data:{state:"recycling"}} unless data entity @s {data:{has_battery:1b}} run function mineraft:structure/recycler/model/idle with entity @s data
