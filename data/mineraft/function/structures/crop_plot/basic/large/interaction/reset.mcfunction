data modify entity @s data.state set value "empty"
data remove entity @s data.seed_type
scoreboard players set @s mr.crop_plot_hits 0
scoreboard players set @s mr.crop_plot_timer 0
function mineraft:structures/crop_plot/basic/large/models/update