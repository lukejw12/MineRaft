execute unless data entity @s {data:{state:"empty"}} run return fail
data modify entity @s data.seed_type set from entity @a[tag=mr.interacting,limit=1] SelectedItem.components."minecraft:custom_data"."mr.seed_type"
data modify entity @s data.state set value "sapling"
function mineraft:structure/crop_plot_large/palm_roll
scoreboard players set @s mr.timer 0
function mineraft:structure/crop_plot_large/model
item modify entity @a[tag=mr.interacting,limit=1] weapon.mainhand mineraft:remove_one
playsound minecraft:block.grass.place block @a ~ ~ ~ 1 1
