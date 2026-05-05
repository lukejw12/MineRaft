summon happy_ghast ~ ~-0.55 ~ {NoAI:1b,Silent:1b,Invulnerable:1b,NoGravity:1b,Tags:["sp.plat_ghast","sp.new_plat"]}
attribute @e[tag=sp.new_plat,limit=1] minecraft:scale base set 0.2125
effect give @e[tag=sp.new_plat,limit=1] minecraft:invisibility infinite 0 true
tag @e[tag=sp.new_plat] remove sp.new_plat
