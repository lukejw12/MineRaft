scoreboard players set #cp.picked mr.data 1
data modify storage mineraft:tmp cp set value {}
data modify storage mineraft:tmp cp.seed set from entity @s data.seed_type
function mineraft:structure/crop_plot/loot with storage mineraft:tmp cp
execute as @a[tag=mr.interacting,limit=1] run function mineraft:structure/common/give_loot
function mineraft:structure/crop_plot/slot_reset
