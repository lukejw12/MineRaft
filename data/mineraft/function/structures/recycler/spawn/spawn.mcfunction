playsound minecraft:block.vault.reject_rewarded_player block @a[distance=..10] ~ ~ ~ 100 1 1

function mineraft:structures/recycler/spawn/spawn_display with storage mineraft:recycler

summon interaction ~0.5 ~ ~0.5 {width:1.05f,height:2.1f,Tags:["mr.recycler","mr.recycler_interaction","mr.new"]}

execute if block ~ ~ ~ iron_trapdoor[facing=north] run tag @e[type=item_display,tag=mr.new_display,limit=1] add mr.trapdoor_north
execute if block ~ ~ ~ iron_trapdoor[facing=south] run tag @e[type=item_display,tag=mr.new_display,limit=1] add mr.trapdoor_south
execute if block ~ ~ ~ iron_trapdoor[facing=east] run tag @e[type=item_display,tag=mr.new_display,limit=1] add mr.trapdoor_east
execute if block ~ ~ ~ iron_trapdoor[facing=west] run tag @e[type=item_display,tag=mr.new_display,limit=1] add mr.trapdoor_west
setblock ~ ~ ~ barrier
setblock ~ ~1 ~ barrier

data modify storage mineraft:grid type set value "recycler"
execute positioned ~0.5 ~-1 ~0.5 as @e[type=item_display,tag=mr.surface,distance=..3,limit=1,sort=nearest] run function mineraft:grid/block/claim with storage mineraft:grid

execute as @e[type=item_display,tag=mr.new_display,limit=1] run scoreboard players operation @s mr.link = @e[type=interaction,tag=mr.new,limit=1] mr.link
execute as @e[type=item_display,tag=mr.new_display,limit=1] store result score @s mr.recycler_id run scoreboard players add #global mr.recycler_id 1
execute as @e[type=interaction,tag=mr.new,limit=1] run scoreboard players operation @s mr.recycler_id = @e[type=item_display,tag=mr.new_display,limit=1] mr.recycler_id

execute as @e[type=item_display,tag=mr.new_display,limit=1] run data modify entity @s data.recycler_type set from storage mineraft:recycler recycler_type
execute as @e[type=item_display,tag=mr.new_display,limit=1] run data modify entity @s data.state set value "idle"
execute as @e[type=item_display,tag=mr.new_display,limit=1] run data modify entity @s data.has_battery set value 0b
execute as @e[type=item_display,tag=mr.new_display,limit=1] run data modify entity @s data.battery_life set value 0
execute as @e[type=item_display,tag=mr.new_display,limit=1] run scoreboard players set @s mr.recycler_fill 0
execute as @e[type=item_display,tag=mr.new_display,limit=1] run scoreboard players set @s mr.recycler_progress 0
execute as @e[type=item_display,tag=mr.new_display,limit=1] run scoreboard players set @s mr.recycler_tick 0
execute as @e[type=item_display,tag=mr.new_display,limit=1] run scoreboard players set @s mr.recycler_battery_tick 0
execute as @e[type=item_display,tag=mr.new_display,limit=1] run scoreboard players set @s mr.recycler_id_temp 0
execute as @e[type=item_display,tag=mr.new_display,limit=1] run data modify entity @s data.cube_count set value 0

tag @e[type=item_display,tag=mr.new_display] remove mr.new_display
tag @e[type=interaction,tag=mr.new] remove mr.new
