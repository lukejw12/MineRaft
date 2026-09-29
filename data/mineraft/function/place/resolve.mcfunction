scoreboard players set #pl.has_target mr.data 0
scoreboard players set #pl.valid mr.data 0
data remove storage mineraft:tmp pl
data modify storage mineraft:tmp pl.item set from entity @s SelectedItem.components."minecraft:custom_data".mineraft.place
execute unless data storage mineraft:tmp pl.item.variant run data modify storage mineraft:tmp pl.item.variant set value "default"
function mineraft:place/load_def with storage mineraft:tmp pl.item
execute unless data storage mineraft:tmp pl.def run return fail
execute store result score #pl.rot mr.data run data get entity @s Rotation[0]
scoreboard players operation #pl.rot mr.data %= #360 mr.const
scoreboard players add #pl.rot mr.data 45
scoreboard players operation #pl.rot mr.data /= #90 mr.const
scoreboard players operation #pl.rot mr.data %= #4 mr.const
scoreboard players set #ray.kind mr.data 0
scoreboard players set #ray.n mr.data 50
execute unless score #sp.sailing sp.data matches 1 anchored eyes positioned ^ ^ ^ anchored feet run function mineraft:place/ray/step
execute if score #sp.sailing sp.data matches 1 run function mineraft:place/sail/ray
execute if score #ray.kind mr.data matches 0 run return fail
function mineraft:place/anchor/dispatch with storage mineraft:tmp pl.def
