data modify entity @s data.fuel_style set from storage mineraft:tmp fuel_style
scoreboard players operation @s mr.fuel += #fuel mr.data
playsound minecraft:block.wood.place block @a[distance=..10] ~ ~ ~ 1 1
particle flame ~ ~ ~ 0.2 0.2 0.2 0 10
execute if data entity @s {data:{state:"smelting"}} run function mineraft:structure/smelter/model/active
function mineraft:structure/common/fuel_shown
