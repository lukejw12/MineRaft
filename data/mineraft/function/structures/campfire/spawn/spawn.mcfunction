execute unless block ~ ~ ~ air unless block ~ ~ ~ iron_trapdoor run return fail
playsound minecraft:block.vault.reject_rewarded_player block @a[distance=..10] ~ ~ ~ 100 1 1
function mineraft:structures/campfire/spawn/spawn_display with storage mineraft:campfire

summon interaction ~0.5 ~ ~0.5 {width:1.05f,height:1.05f,Tags:["mr.campfire","mr.campfire_interaction","mr.new"]}

execute as @e[type=item_display,tag=mr.new_display,limit=1] if block ~ ~ ~ iron_trapdoor[facing=north] run tag @s add mr.trapdoor_north
execute as @e[type=item_display,tag=mr.new_display,limit=1] if block ~ ~ ~ iron_trapdoor[facing=south] run tag @s add mr.trapdoor_south
execute as @e[type=item_display,tag=mr.new_display,limit=1] if block ~ ~ ~ iron_trapdoor[facing=east] run tag @s add mr.trapdoor_east
execute as @e[type=item_display,tag=mr.new_display,limit=1] if block ~ ~ ~ iron_trapdoor[facing=west] run tag @s add mr.trapdoor_west
setblock ~ ~ ~ campfire[lit=false]

data modify storage mineraft:grid type set value "campfire"
data modify storage mineraft:grid h set value 1
execute positioned ~0.5 ~-1 ~0.5 as @e[type=item_display,tag=mr.surface,distance=..3,limit=1,sort=nearest] run function mineraft:grid/block/claim with storage mineraft:grid

execute as @e[type=item_display,tag=mr.new_display,limit=1] run scoreboard players operation @s mr.link = @e[type=interaction,tag=mr.new,limit=1] mr.link
execute as @e[type=item_display,tag=mr.new_display,limit=1] store result score @s mr.campfire_id run scoreboard players add #global mr.campfire_id 1
execute as @e[type=interaction,tag=mr.new,limit=1] run scoreboard players operation @s mr.campfire_id = @e[type=item_display,tag=mr.new_display,limit=1] mr.campfire_id
execute as @e[type=item_display,tag=mr.new_display,limit=1] run data modify entity @s data.campfire_type set from storage mineraft:campfire campfire_type
execute as @e[type=item_display,tag=mr.new_display,limit=1] run scoreboard players set @s mr.campfire_fuel 0
execute as @e[type=item_display,tag=mr.new_display,limit=1] run scoreboard players set @s mr.campfire_progress 0
execute as @e[type=item_display,tag=mr.new_display,limit=1] run scoreboard players set @s mr.campfire_slots 0

execute as @e[type=item_display,tag=mr.new_display,limit=1] run function mineraft:core/structure/store_item
tag @e[type=item_display,tag=mr.new_display] remove mr.new_display
tag @e[type=interaction,tag=mr.new] remove mr.new
