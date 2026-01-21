#/ Core Scoreboards
scoreboard objectives add mr.data dummy
scoreboard objectives add mr.prev_x dummy
scoreboard objectives add mr.prev_z dummy
scoreboard objectives add mr.raycast_dist dummy
execute unless score #mr.raft_otr mr.data matches 1.. run schedule function mineraft:core/otr_world 1t append


##/ Constants
scoreboard objectives add mr.const dummy
scoreboard players set #-1 mr.const -1
scoreboard players set #100 mr.const 100
scoreboard players set #10 mr.const 10

##/ Linking
scoreboard objectives add mr.link dummy

##/ Smeltery
scoreboard objectives add mr.smeltery_fuel dummy
scoreboard objectives add mr.smeltery_progress dummy
scoreboard objectives add mr.smeltery_max dummy
scoreboard objectives add mr.smeltery_id dummy
scoreboard objectives add mr.smelt_progress dummy

#/ Water Purfier
scoreboard objectives add mr.purifier_id dummy
scoreboard objectives add mr.purifier_fuel dummy
scoreboard objectives add mr.purifier_progress dummy
scoreboard objectives add mr.purifier_timer dummy

##/ Steve the Shark
scoreboard objectives add mr.shark_mode dummy
scoreboard objectives add mr.shark_cooldown dummy
scoreboard objectives add mr.shark_path_timer dummy
scoreboard objectives add mr.shark_speed dummy
scoreboard objectives add mr.shark_target_x dummy
scoreboard objectives add mr.shark_target_y dummy
scoreboard objectives add mr.shark_target_z dummy
scoreboard objectives add mr.shark_path_step dummy
scoreboard objectives add mr.shark_y_timer dummy
scoreboard objectives add mr.shark_idle_type dummy
scoreboard objectives add mr.shark_circle_angle dummy
scoreboard objectives add mr.shark_waypoint dummy
scoreboard objectives add mr.shark_heading_x dummy
scoreboard objectives add mr.shark_heading_z dummy
scoreboard objectives add mr.shark_turn_timer dummy

#/ Collection Net
scoreboard objectives add mr.net_id dummy
scoreboard objectives add mr.net_items dummy

##/ flotsam
scoreboard objectives add mr.flotsam_id dummy
scoreboard objectives add mr.flotsam_timer dummy

#/ Wall
scoreboard objectives add mr.wall_id dummy
scoreboard objectives add mr.wall_id2 dummy


#/ Supports
scoreboard objectives add mr.support_id dummy
scoreboard objectives add mr.support_count dummy

#/ Platforms
scoreboard objectives add mr.platform_id dummy
scoreboard objectives add mr.support_value dummy

