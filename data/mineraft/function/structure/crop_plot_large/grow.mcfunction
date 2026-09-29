scoreboard players add @s mr.timer 1
$execute if score @s mr.timer matches ..$(ticks) run return 0
scoreboard players set @s mr.timer 0
$data modify entity @s data.state set value "$(next)"
function mineraft:structure/crop_plot_large/model
