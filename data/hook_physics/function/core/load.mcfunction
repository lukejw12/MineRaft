scoreboard objectives add hp.data dummy
scoreboard objectives add hp.charge dummy
scoreboard objectives add hp.const dummy
scoreboard objectives add hp.rope_idx dummy
scoreboard objectives add hp.tick dummy
scoreboard objectives add hp.link dummy
scoreboard objectives add hp.cooldown dummy
scoreboard players set #hp.max_charge hp.const 60
scoreboard players set #hp.max_dist hp.const 20000
scoreboard players set #hp.segments hp.const 8
scoreboard players set #hp.sag hp.const 800
scoreboard players set #hp.1000 hp.const 1000
scoreboard players set #hp.10000 hp.const 10000
scoreboard players set #-1 hp.const -1
scoreboard players set #2 hp.const 2
scoreboard players set #3 hp.const 3
scoreboard players set #4 hp.const 4
scoreboard players set #10 hp.const 10
scoreboard players set #20 hp.const 20
scoreboard players set #28 hp.const 28
scoreboard players set #35000 hp.const 35000
scoreboard players set #360 hp.const 360
scoreboard players set #hp.rope_tick hp.data 0
kill @e[tag=hp.rot_helper]
summon marker 0 0 0 {Tags:["hp.rot_helper"]}
kill @e[tag=hp.hook]
kill @e[tag=hp.rope]
tag @a remove hp.caster
tag @a remove hp.charging
scoreboard players reset @a hp.charge
scoreboard players reset @a hp.cooldown
scoreboard players set #200 hp.const 200
scoreboard players set #400 hp.const 400
