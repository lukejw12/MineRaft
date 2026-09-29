scoreboard objectives add mr.data dummy
scoreboard objectives add mr.const dummy
scoreboard objectives add mr.link dummy
scoreboard objectives add mr.id dummy
scoreboard objectives add mr.cd dummy
scoreboard objectives add mr.admin trigger
scoreboard objectives add mr.admin_open trigger
scoreboard objectives add mr.fuel dummy
scoreboard objectives add mr.progress dummy
scoreboard objectives add mr.max dummy
scoreboard objectives add mr.timer dummy
scoreboard objectives add mr.timer2 dummy
scoreboard objectives add mr.count dummy
scoreboard objectives add mr.fill dummy
scoreboard objectives add mr.slots dummy
scoreboard objectives add mr.hits dummy
scoreboard objectives add mr.uses dummy
scoreboard objectives add mr.link_b dummy
scoreboard objectives add mr.glow dummy
scoreboard objectives add mr.pidx dummy
scoreboard objectives add mr.fall dummy
scoreboard objectives add mr.by dummy
execute unless score #sail.dx mr.data = #sail.dx mr.data run scoreboard players set #sail.dx mr.data 0
execute unless score #sail.dz mr.data = #sail.dz mr.data run scoreboard players set #sail.dz mr.data 0
scoreboard objectives add mr.raycast_dist dummy
scoreboard objectives add mr.prev_x dummy
scoreboard objectives add mr.prev_z dummy
scoreboard objectives add mr.flotsam_id dummy
scoreboard objectives add mr.flotsam_timer dummy
scoreboard objectives add mr.bobber_id dummy
scoreboard objectives add mr.bobber_timer dummy
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
scoreboard players set #drift.current_x mr.data 8
scoreboard players set #drift.current_z mr.data 0
scoreboard players set #drift.sail mr.data 30
scoreboard players set #drift.max mr.data 60

scoreboard players set #-1 mr.const -1
scoreboard players set #2 mr.const 2
scoreboard players set #3 mr.const 3
scoreboard players set #4 mr.const 4
scoreboard players set #5 mr.const 5
scoreboard players set #6 mr.const 6
scoreboard players set #10 mr.const 10
scoreboard players set #20 mr.const 20
scoreboard players set #90 mr.const 90
scoreboard players set #100 mr.const 100
scoreboard players set #150 mr.const 150
scoreboard players set #360 mr.const 360
scoreboard players set #1000 mr.const 1000
scoreboard players set #8 mr.const 8
scoreboard players set #707 mr.const 707
scoreboard players set #100 mr.const 100
scoreboard players set #flotsam_wave mr.data 0
scoreboard objectives add mr.coco dummy
scoreboard objectives add mr.coco_on dummy
