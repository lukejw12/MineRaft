
execute at @e[tag=central_raft,limit=1] run summon marker ~ ~ ~ {Tags:["resource_spawn"]}
execute at @e[tag=central_raft,limit=1] run summon marker ~ ~ ~ {Tags:["resource_spawn"]}
execute at @e[tag=central_raft,limit=1] run summon marker ~ ~ ~ {Tags:["resource_spawn"]}
execute at @e[tag=central_raft,limit=1] run summon marker ~ ~ ~ {Tags:["resource_spawn"]}
execute at @e[tag=central_raft,limit=1] run summon marker ~ ~ ~ {Tags:["resource_spawn"]}

execute if score #target_count temp matches 6..10 run function mineraft:spawn_resources/create_markers_6_10

execute if score #target_count temp matches 11..20 run function mineraft:spawn_resources/create_markers_11_20

execute if score #target_count temp matches 21..40 run function mineraft:spawn_resources/create_markers_21_40