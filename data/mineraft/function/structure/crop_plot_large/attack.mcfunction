execute unless data entity @s {data:{state:"full"}} run return fail
execute unless data entity @s data.palm_v run function mineraft:structure/crop_plot_large/palm_roll
scoreboard players set #pt.pow mr.data 1
execute if items entity @a[tag=mr.interacting,limit=1] weapon.mainhand *[custom_data~{mr.axe:2}] run scoreboard players set #pt.pow mr.data 2
execute if items entity @a[tag=mr.interacting,limit=1] weapon.mainhand *[custom_data~{mr.axe:3}] run scoreboard players set #pt.pow mr.data 3
particle minecraft:block{block_state:"minecraft:petrified_oak_slab"} ~ ~2 ~ 0.3 0.5 0.3 0 5
execute if data entity @s {data:{fruit:1b}} run return run function mineraft:structure/crop_plot_large/shake
playsound block.wood.break block @a[distance=..10] ~ ~ ~ 1 1
function mineraft:structure/crop_plot_large/chop
