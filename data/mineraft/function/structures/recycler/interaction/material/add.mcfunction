execute as @e[tag=mr.target_recycler] if data entity @s {data:{state:"finished"}} run return fail

data modify storage mineraft:recycler recycle_type set from entity @s SelectedItem.components.minecraft:custom_data."mr.recycle_type"
function mineraft:references/core/recyclables

execute as @e[tag=mr.target_recycler] if score @s mr.recycler_fill matches 600.. run return fail

execute as @e[tag=mr.target_recycler] run scoreboard players operation @s mr.recycler_fill += #recycle_value mr.data
execute as @e[tag=mr.target_recycler] if score @s mr.recycler_fill matches 601.. run scoreboard players set @s mr.recycler_fill 600

item modify entity @s weapon.mainhand mineraft:remove_one

playsound minecraft:block.composter.fill block @a ~ ~ ~ 1 1
particle item{item:{id:"minecraft:clay_ball"}} ~ ~0.8 ~ 0.15 0.15 0.15 0.02 8

execute as @e[tag=mr.target_recycler] if score @s mr.recycler_fill matches 150.. if data entity @s {data:{state:"idle"}} run data modify entity @s data.state set value "recycling"
execute as @e[tag=mr.target_recycler] if score @s mr.recycler_fill matches 150.. if data entity @s {data:{state:"recycling"}} if data entity @s {data:{has_battery:1b}} run function mineraft:structures/recycler/models/active/update
execute as @e[tag=mr.target_recycler] if score @s mr.recycler_fill matches 150.. if data entity @s {data:{state:"recycling"}} unless data entity @s {data:{has_battery:1b}} run function mineraft:structures/recycler/models/idle/update
