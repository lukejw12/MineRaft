execute as @a at @s run function mineraft:entity_execute/holding_item
execute if entity @e[tag=displayed] as @e[tag=displayed] at @s run function mineraft:entity_execute/display_lifetime
execute if entity @e[type=marker] as @e[type=marker] at @s run function mineraft:entity_execute/marker_active_functions

execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{resources:1b}}}}] run function mineraft:spawn_resources/replace_custom_data
execute as @e[type=marker,tag=central_raft] at @s run function mineraft:spawn_resources/timer_spawn
execute as @e[type=item,tag=resources] at @s run function mineraft:resource_fishing_mechanics/fishing_and_current

scoreboard players set #total net_amount 0
execute as @e[tag=active_net,type=marker] run scoreboard players add #total net_amount 1

execute as @e[type=item_display,tag=boat] at @s unless predicate mineraft:is_riding run kill @e[type=item,sort=nearest,distance=..6,nbt={Item:{id:"minecraft:bamboo_raft"}}]
execute as @e[type=item_display,tag=boat] at @s unless predicate mineraft:is_riding run summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:bamboo_raft",count:1,components:{"minecraft:custom_data":{sail_boat:1b},"minecraft:item_model":"minecraft:sail_raft","minecraft:item_name":{"translate":"item.mineraft.sailable_raft","fallback":"Sailable Raft"},"minecraft:rarity":"epic","minecraft:entity_data":{id:"minecraft:bamboo_raft",Tags:["sail","new"]}}}}
execute as @e[type=item_display,tag=boat] at @s unless predicate mineraft:is_riding run kill @s

execute if entity @e[tag=sail,type=bamboo_raft] as @e[tag=sail,type=bamboo_raft] at @s run function mineraft:entity_execute/sailing_boat
execute if entity @e[type=dolphin,tag=shark] as @e[type=dolphin,tag=shark] at @s run function mineraft:shark/ticking_shark

execute as @a at @s unless score @s hydration matches 0.. run scoreboard players set @s hydration 100


execute unless entity @e[tag=shark,type=dolphin] run function mineraft:shark/respawn_timer/timer
execute unless entity @e[tag=shark,type=dolphin] as @e[type=item_display,tag=aj.shark_swim.root] run function animated_java:shark_swim/remove/all


execute as @a at @s if score @s hydration matches 101.. run scoreboard players set @s hydration 100

execute store result score #Global player_online if entity @a

effect give @e[tag=staircase_steps,type=shulker] invisibility infinite 1 true

execute as @e[type=interaction,tag=trophy_board_interact] at @s run function mineraft:raft_decor/trophy_board/process_interaction
function mineraft:weather/tick

execute as @e[type=interaction,tag=collection_net_interact] at @s if data entity @s interaction run function mineraft:raft_extension/collection_net/process_interaction
