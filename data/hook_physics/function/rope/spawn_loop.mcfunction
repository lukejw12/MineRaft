summon block_display ~ ~ ~ {Tags:["hp.rope","hp.new_rope"],block_state:{Name:"iron_chain",Properties:{axis:"y"}},transformation:{left_rotation:[0f,0.707f,0.707f,0f],right_rotation:[0f,0f,0f,1f],translation:[0.5f,-0.5f,-0.5f],scale:[1f,1f,1f]},teleport_duration:3}
scoreboard players operation @e[tag=hp.new_rope,limit=1] hp.rope_idx = #hp.i hp.data
tag @e[tag=hp.new_rope] remove hp.new_rope
scoreboard players add #hp.i hp.data 1
execute if score #hp.i hp.data < #hp.segments hp.const run function hook_physics:rope/spawn_loop
