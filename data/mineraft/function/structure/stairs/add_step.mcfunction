function mineraft:structure/stairs/add_shulker
summon item_display ~ ~ ~ {Tags:["mr.part","mr.p.shulker","mr.p.trail","mr.p.trail1","mr.new_trail"]}
summon item_display ~ ~ ~ {Tags:["mr.part","mr.p.shulker","mr.p.trail","mr.p.trail2","mr.new_trail"]}
scoreboard players operation @e[type=item_display,tag=mr.new_trail] mr.id = #st.id mr.data
execute as @e[type=item_display,tag=mr.new_trail] at @s run function mineraft:structure/stairs/add_shulker
tag @e[type=item_display,tag=mr.new_trail] remove mr.new_trail
