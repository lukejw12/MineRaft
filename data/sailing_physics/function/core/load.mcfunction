scoreboard objectives add sp.data dummy
scoreboard objectives add sp.trig dummy
scoreboard objectives add sp.const dummy
scoreboard objectives add sp.idx dummy
scoreboard objectives add sp.lx dummy
scoreboard objectives add sp.ly dummy
scoreboard objectives add sp.lz dummy
scoreboard players set #10000 sp.const 10000
scoreboard players set #1000 sp.const 1000
scoreboard players set #500 sp.const 500
scoreboard players set #50 sp.const 50
scoreboard players set #360 sp.const 360
scoreboard players set #90 sp.const 90
scoreboard players set #0 sp.const 0
scoreboard players set #-1 sp.const -1
scoreboard players set #fwd_speed sp.const 80
scoreboard players set #bwd_speed sp.const 40
scoreboard players set #push_scale sp.const 454
scoreboard players set #push_div sp.const 100
scoreboard players set #ease sp.const 8
scoreboard players set #ff_scale sp.const 546
scoreboard players set #ff_air_scale sp.const 910
scoreboard players set #push_air_scale sp.const 90
scoreboard players set #256 sp.const 256
scoreboard players set #sp.sailing sp.data 0
scoreboard players set #sp.steering sp.data 0
scoreboard players set #sp.cooldown sp.data 0
scoreboard players set #sp.auto_move sp.data 0
function sailing_physics:math/trig_init
execute if entity @e[tag=sp.raft_entity,limit=1] run function sailing_physics:state/recover
scoreboard objectives add sp.c.xs dummy
scoreboard objectives add sp.c.zs dummy
scoreboard objectives add sp.c.xf dummy
scoreboard objectives add sp.c.zf dummy
scoreboard objectives add sp.c.xc dummy
scoreboard objectives add sp.c.zc dummy
scoreboard objectives add sp.c.lx dummy
scoreboard objectives add sp.c.lz dummy
scoreboard players set #sp.carry_mode sp.const 1
