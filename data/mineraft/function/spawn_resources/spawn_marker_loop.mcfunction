
scoreboard players add #count temp 1
execute at @e[tag=central_raft,limit=1] run summon marker ~ ~ ~ {Tags:["resource_spawn"]}

execute if score #count temp < #target temp if score #count temp < #max_loop temp run schedule function mineraft:spawn_resources/spawn_marker_loop 1t

execute if score #count temp >= #target temp run function mineraft:spawn_resources/process_spawned_markers
execute if score #count temp >= #max_loop temp unless score #count temp >= #target temp run function mineraft:spawn_resources/process_spawned_markers