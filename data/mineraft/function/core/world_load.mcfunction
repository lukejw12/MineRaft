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
scoreboard players set #2 mr.const 2
scoreboard players set #3 mr.const 3
scoreboard players set #4 mr.const 4
scoreboard players set #5 mr.const 5
scoreboard players set #6 mr.const 6

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
scoreboard objectives add mr.shark_id dummy
scoreboard objectives add mr.shark_prev_mode dummy

#/ Collection Net
scoreboard objectives add mr.net_id dummy
scoreboard objectives add mr.net_items dummy

#/ flotsam
scoreboard objectives add mr.flotsam_id dummy
scoreboard objectives add mr.flotsam_timer dummy
scoreboard objectives add mr.bobber_id dummy
scoreboard objectives add mr.bobber_timer dummy
scoreboard players set #flotsam_wave mr.data 0
#/ Wall
scoreboard objectives add mr.wall_id dummy
scoreboard objectives add mr.wall_id2 dummy


#/ Supports
scoreboard objectives add mr.support_id dummy
scoreboard objectives add mr.support_count dummy

#/ Platforms
scoreboard objectives add mr.platform_id dummy
scoreboard objectives add mr.support_value dummy

#/ Stairs
scoreboard objectives add mr.stairs_id dummy

#/ Crop Plots
scoreboard objectives add mr.crop_plot_id dummy
scoreboard objectives add mr.crop_plot_timer dummy
scoreboard objectives add mr.crop_plot_hits dummy


#/ Grills
scoreboard objectives add mr.grill_id dummy
scoreboard objectives add mr.grill_fuel dummy
scoreboard objectives add mr.grill_progress dummy
scoreboard objectives add mr.grill_max dummy
scoreboard objectives add mr.grill_cook dummy

#/ Recycler
scoreboard objectives add mr.recycler_id dummy
scoreboard objectives add mr.recycler_fill dummy
scoreboard objectives add mr.recycler_progress dummy
scoreboard objectives add mr.recycler_tick dummy
scoreboard objectives add mr.recycler_battery_tick dummy
scoreboard objectives add mr.recycler_id_temp dummy
scoreboard players set #150 mr.const 150

#/ Grid System
schedule function mineraft:grid/core/migrate 5t append
execute as @e[type=item_display,tag=mr.smeltery_display] run tag @s add mr.structure_display
execute as @e[type=item_display,tag=mr.purifier_display] run tag @s add mr.structure_display
execute as @e[type=item_display,tag=mr.net_display] run tag @s add mr.structure_display
execute as @e[type=item_display,tag=mr.support_display] run tag @s add mr.structure_display
execute as @e[type=item_display,tag=mr.wall_display] run tag @s add mr.structure_display
execute as @e[type=item_display,tag=mr.platform_display] run tag @s add mr.structure_display
execute as @e[type=item_display,tag=mr.stairs_display] run tag @s add mr.structure_display
execute as @e[type=item_display,tag=mr.crop_plot_display] run tag @s add mr.structure_display
execute as @e[type=item_display,tag=mr.small_crop_plot_display] run tag @s add mr.structure_display
execute as @e[type=item_display,tag=mr.small_adv_crop_plot_display] run tag @s add mr.structure_display
execute as @e[type=item_display,tag=mr.grill_display] run tag @s add mr.structure_display
execute as @e[type=item_display,tag=mr.recycler_display] run tag @s add mr.structure_display

#/ Crop plot type tags 
execute as @e[type=item_display,tag=mr.crop_plot_display] if data entity @s {data:{crop_plot_type:"basic_crop_plot"}} run tag @s add mr.basic_type
execute as @e[type=item_display,tag=mr.crop_plot_display] if data entity @s {data:{crop_plot_type:"advanced_crop_plot"}} run tag @s add mr.advanced_type
