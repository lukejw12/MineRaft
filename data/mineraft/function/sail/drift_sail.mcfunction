execute store result score #dr.h mr.data run data get entity @s data.heading
scoreboard players operation #dr.d mr.data = #drift.sail mr.data
scoreboard players operation #dr.d mr.data *= #707 mr.const
scoreboard players operation #dr.d mr.data /= #1000 mr.const
execute if score #dr.h mr.data matches 0 run scoreboard players operation #dr.sz mr.data += #drift.sail mr.data
execute if score #dr.h mr.data matches 1 run scoreboard players operation #dr.sx mr.data -= #dr.d mr.data
execute if score #dr.h mr.data matches 1 run scoreboard players operation #dr.sz mr.data += #dr.d mr.data
execute if score #dr.h mr.data matches 2 run scoreboard players operation #dr.sx mr.data -= #drift.sail mr.data
execute if score #dr.h mr.data matches 3 run scoreboard players operation #dr.sx mr.data -= #dr.d mr.data
execute if score #dr.h mr.data matches 3 run scoreboard players operation #dr.sz mr.data -= #dr.d mr.data
execute if score #dr.h mr.data matches 4 run scoreboard players operation #dr.sz mr.data -= #drift.sail mr.data
execute if score #dr.h mr.data matches 5 run scoreboard players operation #dr.sx mr.data += #dr.d mr.data
execute if score #dr.h mr.data matches 5 run scoreboard players operation #dr.sz mr.data -= #dr.d mr.data
execute if score #dr.h mr.data matches 6 run scoreboard players operation #dr.sx mr.data += #drift.sail mr.data
execute if score #dr.h mr.data matches 7 run scoreboard players operation #dr.sx mr.data += #dr.d mr.data
execute if score #dr.h mr.data matches 7 run scoreboard players operation #dr.sz mr.data += #dr.d mr.data
