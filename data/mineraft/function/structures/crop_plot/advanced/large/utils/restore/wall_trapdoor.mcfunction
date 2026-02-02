$execute if entity @e[type=item_display,tag=mr.wall_display,distance=..3] positioned ~$(offset_x) ~ ~$(offset_z) run setblock ~ ~ ~ iron_trapdoor[facing=$(direction),half=bottom,open=true]
