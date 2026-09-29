function mineraft:structure/common/give_output
data modify entity @s data.state set value "idle"
data remove entity @s data.smelt_type
data remove entity @s data.output_type
data remove entity @s data.content
function mineraft:structure/smelter/model/idle
function mineraft:structure/smelter/content
