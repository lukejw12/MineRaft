execute store result score #Global player_online if entity @a
scoreboard players enable @a receiver_target
scoreboard players enable @a tips
scoreboard players enable @a discord
scoreboard players enable @a credits
scoreboard players set #total net_amount 0
execute as @e[tag=active_net,type=marker] run scoreboard players add #total net_amount 1

execute as @a at @s run function mineraft:entity_execute/holding_item
execute as @e[tag=displayed] at @s run function mineraft:entity_execute/display_lifetime
execute as @e[type=marker] at @s run function mineraft:entity_execute/marker_active_functions
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{resources:1b}}}}] run function mineraft:spawn_resources/replace_custom_data
execute as @e[type=marker,tag=central_raft,limit=1,distance=0..] at @s run function mineraft:spawn_resources/timer_spawn
execute as @e[type=item,tag=resources] at @s run function mineraft:resource_fishing_mechanics/fishing_and_current
execute as @e[type=item_display,tag=boat] at @s run function mineraft:misc/entity_tick/sail_raft
execute if entity @e[tag=sail,type=bamboo_raft] as @e[tag=sail,type=bamboo_raft] at @s run function mineraft:entity_execute/sailing_boat
execute if entity @e[type=dolphin,tag=shark] as @e[type=dolphin,tag=shark] at @s run function mineraft:shark/ticking_shark
execute unless entity @e[tag=shark,type=dolphin] run function mineraft:shark/respawn_timer/timer
execute unless entity @e[tag=shark,type=dolphin] as @e[type=item_display,tag=aj.shark_swim.root] run function animated_java:shark_swim/remove/all

function mineraft:weather/tick
function mineraft:triggers/tips/cycle_tips
function mineraft:triggers/discord/discord_trigger
function mineraft:triggers/credits/credits_trigger
function mineraft:trading_post/update_villager_trades
execute as @e[type=villager,tag=register_entity,tag=!named] at @s run function mineraft:misc/entity_tick/trading_post_natural