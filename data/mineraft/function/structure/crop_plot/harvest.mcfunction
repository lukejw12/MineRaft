scoreboard players operation #cp.id mr.data = @s mr.id
scoreboard players set #cp.picked mr.data 0
function mineraft:structure/crop_plot/pick_nearest
execute if score #cp.picked mr.data matches 0 run return fail
scoreboard players remove @s mr.uses 1
particle minecraft:block{block_state:"minecraft:petrified_oak_slab"} ~ ~1 ~ 0.3 0.5 0.3 0 5
playsound block.crop.break block @a[distance=..10] ~ ~ ~ 1 1
execute if score @s mr.uses matches ..0 run function mineraft:structure/crop_plot/dry_out
