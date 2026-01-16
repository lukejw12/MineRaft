data modify entity @s data.state set value "finished"

scoreboard players set @s mr.smelt_progress 0

function mineraft:structures/smeltery/model/update_model_finished