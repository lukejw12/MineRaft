summon happy_ghast ~ ~-2 ~ {NoAI:1b,Silent:1b,Invulnerable:1b,NoGravity:1b,Tags:["sp.floor_ghast","sp.new_ghast"]}
attribute @e[tag=sp.new_ghast,limit=1] minecraft:scale base set 0.75
effect give @e[tag=sp.new_ghast,limit=1] minecraft:invisibility infinite 0 true
tag @e[tag=sp.new_ghast] remove sp.new_ghast
