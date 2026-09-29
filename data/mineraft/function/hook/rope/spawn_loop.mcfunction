summon item_display ~ ~ ~ {Tags:["hp.rope","hp.new_rope"],item:{id:"minecraft:string",count:1,components:{"minecraft:item_model":"raft_items:tool/rope"}},item_display:"none",transformation:{left_rotation:[0.7071f,0f,0f,0.7071f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1.0667f,1f]},teleport_duration:3}
scoreboard players operation @e[tag=hp.new_rope,limit=1] hp.rope_idx = #hp.i hp.data
tag @e[tag=hp.new_rope] remove hp.new_rope
scoreboard players add #hp.i hp.data 1
execute if score #hp.i hp.data < #hp.segments hp.const run function mineraft:hook/rope/spawn_loop
