execute if entity @e[tag=sp.sup_free,limit=1] run return run function sailing_physics:collision/support/reuse
summon armor_stand ~ ~ ~ {NoGravity:1b,Small:1b,Invisible:1b,Tags:["sp.support_coll","sp.new_sup"],attributes:[{id:"minecraft:scale",base:0.1}],Passengers:[{id:"minecraft:shulker",Silent:1b,Invulnerable:1b,NoAI:1b,NoGravity:1b,Peek:0b,Tags:["sp.support_shulker"],active_effects:[{id:"minecraft:invisibility",duration:-1,amplifier:0b,show_particles:false}]}]}
tag @e[tag=sp.new_sup] remove sp.new_sup
