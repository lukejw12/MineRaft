
execute store result score #dx shark.detect run data get entity @p[predicate=mineraft:in_water,distance=..60] Pos[0] 1000
execute store result score #dy shark.detect run data get entity @p[predicate=mineraft:in_water,distance=..60] Pos[1] 1000
execute store result score #dz shark.detect run data get entity @p[predicate=mineraft:in_water,distance=..60] Pos[2] 1000

execute store result score #sx shark.detect run data get entity @s Pos[0] 1000
execute store result score #sy shark.detect run data get entity @s Pos[1] 1000
execute store result score #sz shark.detect run data get entity @s Pos[2] 1000

scoreboard players operation #dx shark.detect -= #sx shark.detect
scoreboard players operation #dy shark.detect -= #sy shark.detect
scoreboard players operation #dz shark.detect -= #sz shark.detect

execute if entity @e[type=#boat,predicate=mineraft:in_water,distance=..10] store result entity @s Motion[0] double 0.0003 run scoreboard players get #dx shark.detect
execute if entity @e[type=#boat,predicate=mineraft:in_water,distance=..10] store result entity @s Motion[1] double 0.0003 run scoreboard players get #dy shark.detect
execute if entity @e[type=#boat,predicate=mineraft:in_water,distance=..10] store result entity @s Motion[2] double 0.0003 run scoreboard players get #dz shark.detect

execute unless entity @e[type=#boat,predicate=mineraft:in_water,distance=..10] store result entity @s Motion[0] double 0.0001 run scoreboard players get #dx shark.detect
execute unless entity @e[type=#boat,predicate=mineraft:in_water,distance=..10] store result entity @s Motion[1] double 0.0001 run scoreboard players get #dy shark.detect
execute unless entity @e[type=#boat,predicate=mineraft:in_water,distance=..10] store result entity @s Motion[2] double 0.0001 run scoreboard players get #dz shark.detect
