scoreboard players operation #st.id mr.data = @s mr.id
execute as @e[type=item_display,tag=mr.p.shulker,tag=!mr.p.trail,distance=..4] if score @s mr.id = #st.id mr.data at @s run function mineraft:structure/stairs/add_step
