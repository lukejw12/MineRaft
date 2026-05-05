summon armor_stand ~ ~1 ~ {Invisible:1b,NoGravity:1b,Invulnerable:1b,Small:1b,Tags:["sp.vehicle"],attributes:[{id:"minecraft:scale",base:0.01}]}
ride @s mount @e[tag=sp.vehicle,limit=1,sort=nearest]
