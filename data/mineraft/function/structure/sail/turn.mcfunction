execute store result score #sa.h mr.data run data get entity @s data.heading
$scoreboard players set #sa.s mr.data $(steps)
scoreboard players operation #sa.h mr.data += #sa.s mr.data
scoreboard players add #sa.h mr.data 8
scoreboard players operation #sa.h mr.data %= #8 mr.const
execute store result entity @s data.heading int 1 run scoreboard players get #sa.h mr.data
data modify storage mineraft:tmp st set value {}
execute store result storage mineraft:tmp st.yaw int 45 run scoreboard players get #sa.h mr.data
scoreboard players operation #sa.id mr.data = @s mr.id
function mineraft:structure/sail/turn_parts with storage mineraft:tmp st
playsound minecraft:block.wooden_trapdoor.open block @a ~ ~ ~ 0.6 0.7
