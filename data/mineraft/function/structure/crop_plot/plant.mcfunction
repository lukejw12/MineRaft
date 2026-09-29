data modify storage mineraft:tmp cp set value {size:"small"}
data modify storage mineraft:tmp cp.seed set from entity @a[tag=mr.interacting,limit=1] SelectedItem.components."minecraft:custom_data"."mr.seed_type"
function mineraft:structure/crop_plot/crop_def with storage mineraft:tmp cp
execute unless data storage mineraft:tmp cp.def run return fail
data modify storage mineraft:tmp cp.size set from storage mineraft:tmp cp.def.size
scoreboard players operation #cp.id mr.data = @s mr.id
function mineraft:structure/crop_plot/mixed
execute if score #cp.mixed mr.data matches 1 run return fail
function mineraft:structure/crop_plot/free_slot with storage mineraft:tmp cp
execute unless entity @e[type=item_display,tag=mr.cp_slot,limit=1] run return fail
execute as @e[type=item_display,tag=mr.cp_slot,limit=1] run function mineraft:structure/crop_plot/sow
tag @e[type=item_display,tag=mr.cp_slot] remove mr.cp_slot
item modify entity @a[tag=mr.interacting,limit=1,gamemode=!creative] weapon.mainhand mineraft:remove_one
playsound minecraft:block.grass.place block @a ~ ~ ~ 1 1
