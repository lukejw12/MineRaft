function mineraft:structure/common/give_output
data modify entity @s data.state set value "idle"
data remove entity @s data.grill_recipe
data remove entity @s data.output_type
