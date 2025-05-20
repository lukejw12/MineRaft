## World Setup
schedule function mineraft:spawn_raft/spawn_raft 15t append

## Scoreboard Setup
# Foudation Raycast
scoreboard objectives add raft_extension dummy
# Collection Net Raycast
scoreboard objectives add net_id dummy
scoreboard objectives add net_id_counter dummy
scoreboard objectives add item_count dummy

scoreboard objectives add raft_extension_net dummy
# Smeltery Net Raycast
scoreboard objectives add smeltery dummy
# Resources
scoreboard objectives add resource_delay dummy
# Water Purrifier
scoreboard objectives add water_purifier dummy
scoreboard objectives add purifier_x dummy
scoreboard objectives add purifier_y dummy
scoreboard objectives add purifier_z dummy
scoreboard objectives add purifier_current dummy
scoreboard objectives add purifier_start dummy
scoreboard objectives add purifier_timer dummy
scoreboard objectives add temp dummy
scoreboard objectives add dummy dummy
scoreboard objectives add water_purified dummy

scoreboard objectives add solid_wall_id dummy
scoreboard objectives add l_junction_wall_id dummy
scoreboard objectives add solid_l_junction_wall dummy
scoreboard objectives add solid_wooden_wall dummy

scoreboard objectives add fishing_state dummy
scoreboard objectives add lifetime dummy
scoreboard objectives add foundation dummy
scoreboard objectives add simple_grill dummy
scoreboard objectives add spread_x dummy
scoreboard objectives add growth_timer dummy
scoreboard objectives add loop dummy
scoreboard objectives add spread_z dummy

scoreboard objectives add wooden_staircase dummy
scoreboard objectives add wooden_support dummy
scoreboard objectives add wooden_platform dummy
scoreboard objectives add stop_reach dummy
scoreboard objectives add hammer dummy
scoreboard objectives add playstyle dummy
scoreboard objectives add temp dummy
scoreboard objectives add hammer_use dummy
scoreboard objectives add hammer_choose dummy
scoreboard objectives add net_amount dummy
scoreboard objectives add rain_collector dummy
scoreboard objectives add shark.detect dummy
scoreboard objectives add shark.timer dummy
scoreboard objectives add shark.angle dummy
scoreboard objectives add shark.id dummy
scoreboard objectives add rain_collector_timer dummy
scoreboard objectives add hydration dummy
scoreboard objectives add hydration_counter dummy
scoreboard objectives add death minecraft.custom:minecraft.deaths
scoreboard players set #360 shark.detect 360
scoreboard players set #100 shark.detect 100
scoreboard objectives add player_online dummy
scoreboard objectives add shark.raft_timer dummy
scoreboard objectives add shark_kills dummy
scoreboard players set #30 shark.detect 30
scoreboard players set #45 shark.detect 45
scoreboard players set #360 shark.detect 360
scoreboard objectives add shark.raft_timer dummy
scoreboard objectives add shark.stuck_timer dummy
scoreboard objectives add shark.water_dir dummy
scoreboard objectives add shark.health dummy
scoreboard objectives add staircase_id dummy
scoreboard objectives add central_raft_amount dummy
scoreboard objectives add large_crop_plot dummy
scoreboard objectives add crop_plot dummy
execute positioned ~0.5 63 ~0.5 unless entity @e[tag=central_raft,distance=..2] run kill @e[tag=central_raft]
execute positioned ~0.5 63 ~0.5 unless entity @e[tag=central_raft,distance=..2] run summon marker ~ 63 ~ {Tags:["central_raft"]}
execute unless entity @e[tag=shark_name] run summon marker 0 62 0 {Tags:["shark_name"],CustomNameVisible:0b,CustomName:{"color":"aqua","text":"Shark"}}

# Weather system
scoreboard objectives add weather.state dummy
scoreboard objectives add weather.timer dummy
scoreboard objectives add weather.transition dummy
scoreboard players set #current weather.state 0
scoreboard players set #timer weather.timer 0
scoreboard players set #transition weather.transition 0


scoreboard objectives add cooking_pot dummy
scoreboard objectives add cooking_time dummy
scoreboard objectives add ingredient_count dummy
scoreboard objectives add nutrition_value dummy
scoreboard objectives add saturation_value dummy
scoreboard objectives add cooking dummy
scoreboard objectives add cook dummy
scoreboard objectives add temp dummy
scoreboard players set #2 dummy 2
scoreboard players set #4 dummy 4
scoreboard players set #8 dummy 8
scoreboard players set #16 dummy 16
scoreboard players set #32 dummy 32
scoreboard players set #64 dummy 64

scoreboard objectives add trophy_board dummy
scoreboard objectives add trophy_has_shark dummy

scoreboard objectives add global dummy
scoreboard objectives add raw_cod_count dummy
scoreboard objectives add raw_shark_count dummy
scoreboard objectives add water_count dummy
scoreboard objectives add pure_water_count dummy
scoreboard objectives add thatch_count dummy
scoreboard objectives add kelp_count dummy
scoreboard objectives add dried_kelp_count dummy
scoreboard objectives add berries_count dummy
scoreboard objectives add cod_count dummy
scoreboard objectives add shark_count dummy
scoreboard objectives add bread_count dummy

scoreboard objectives add locate_distance dummy
scoreboard objectives add locate_distance_1 dummy
scoreboard objectives add locate_distance_2 dummy
scoreboard objectives add locate_distance_3 dummy
scoreboard players set #temp locate_distance 0
scoreboard players set #invert locate_distance 0
#bossbar add mineraft:radar/locate_distance "Island Distance"

bossbar add mineraft:radar/locate_distance {"text":"Island Radar"}
scoreboard objectives add compass_id dummy
scoreboard objectives add player_has_compass dummy

