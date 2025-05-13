
execute if score #total net_amount matches 0..5 store result score #target_count temp run random value 4..10
execute if score #total net_amount matches 6..10 store result score #target_count temp run random value 11..20
execute if score #total net_amount matches 11..15 store result score #target_count temp run random value 21..30
execute if score #total net_amount matches 16.. store result score #target_count temp run random value 31..40
execute if score #target_count temp matches 41.. run scoreboard players set #target_count temp 40
scoreboard players operation #base_count temp *= #resource_multiplier resource_delay
scoreboard players operation #base_count temp /= #2 dummy
scoreboard players operation #target_count temp = #base_count temp
kill @e[type=marker,tag=resource_spawn]

function mineraft:spawn_resources/create_markers

execute if entity @e[type=marker,tag=resource_spawn] run function mineraft:spawn_resources/process_spawned_markers