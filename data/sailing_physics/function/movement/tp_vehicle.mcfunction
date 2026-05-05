execute store result storage sailing_physics:temp x double 0.001 run scoreboard players get #sp.center_x sp.data
execute store result storage sailing_physics:temp z double 0.001 run scoreboard players get #sp.center_z sp.data
function sailing_physics:movement/do_tp_vehicle with storage sailing_physics:temp
