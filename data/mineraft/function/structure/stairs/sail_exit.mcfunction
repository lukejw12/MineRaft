scoreboard players operation #st.id mr.data = @s mr.id
execute as @e[type=item_display,tag=mr.p.shulker,distance=..4] if score @s mr.id = #st.id mr.data on passengers run tag @s add mr.dead
tp @e[type=shulker,tag=mr.dead] ~ -200 ~
kill @e[type=shulker,tag=mr.dead]
execute as @e[type=item_display,tag=mr.p.trail,distance=..4] if score @s mr.id = #st.id mr.data run kill @s
