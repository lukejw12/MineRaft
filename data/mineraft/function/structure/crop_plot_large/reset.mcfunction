data modify entity @s data.state set value "empty"
data remove entity @s data.seed_type
data remove entity @s data.palm_v
data remove entity @s data.fruit
scoreboard players set @s mr.hits 0
scoreboard players set @s mr.timer 0
function mineraft:structure/crop_plot_large/model
