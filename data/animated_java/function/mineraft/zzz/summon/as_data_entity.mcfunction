
data modify entity @s data.uuids append from storage animated_java:gu out
function animated_java:global/gu/get_entity_uuid_string
data modify entity @s data.uuids append from storage animated_java:gu out
data modify entity @s data.uuids_by_name.data_data set from storage animated_java:gu out
execute on vehicle on passengers if entity @s[tag=aj.mineraft.node.fin] run function animated_java:global/gu/get_entity_uuid_string
data modify entity @s data.uuids append from storage animated_java:gu out
data modify entity @s data.uuids_by_name.bone_fin set from storage animated_java:gu out
execute on vehicle on passengers if entity @s[tag=aj.mineraft.node.tail] run function animated_java:global/gu/get_entity_uuid_string
data modify entity @s data.uuids append from storage animated_java:gu out
data modify entity @s data.uuids_by_name.bone_tail set from storage animated_java:gu out
execute on vehicle on passengers if entity @s[tag=aj.mineraft.node.body_seg_3] run function animated_java:global/gu/get_entity_uuid_string
data modify entity @s data.uuids append from storage animated_java:gu out
data modify entity @s data.uuids_by_name.bone_body_seg_3 set from storage animated_java:gu out
execute on vehicle on passengers if entity @s[tag=aj.mineraft.node.body_seg_2] run function animated_java:global/gu/get_entity_uuid_string
data modify entity @s data.uuids append from storage animated_java:gu out
data modify entity @s data.uuids_by_name.bone_body_seg_2 set from storage animated_java:gu out
execute on vehicle on passengers if entity @s[tag=aj.mineraft.node.body_seg_1] run function animated_java:global/gu/get_entity_uuid_string
data modify entity @s data.uuids append from storage animated_java:gu out
data modify entity @s data.uuids_by_name.bone_body_seg_1 set from storage animated_java:gu out
execute on vehicle on passengers if entity @s[tag=aj.mineraft.node.bottom_jaw] run function animated_java:global/gu/get_entity_uuid_string
data modify entity @s data.uuids append from storage animated_java:gu out
data modify entity @s data.uuids_by_name.bone_bottom_jaw set from storage animated_java:gu out
execute on vehicle on passengers if entity @s[tag=aj.mineraft.node.top_jaw] run function animated_java:global/gu/get_entity_uuid_string
data modify entity @s data.uuids append from storage animated_java:gu out
data modify entity @s data.uuids_by_name.bone_top_jaw set from storage animated_java:gu out
execute on vehicle on passengers if entity @s[tag=aj.mineraft.node.gills] run function animated_java:global/gu/get_entity_uuid_string
data modify entity @s data.uuids append from storage animated_java:gu out
data modify entity @s data.uuids_by_name.bone_gills set from storage animated_java:gu out
execute on vehicle on passengers if entity @s[tag=aj.mineraft.node.dorsal_fin_body] run function animated_java:global/gu/get_entity_uuid_string
data modify entity @s data.uuids append from storage animated_java:gu out
data modify entity @s data.uuids_by_name.bone_dorsal_fin_body set from storage animated_java:gu out
execute on vehicle on passengers if entity @s[tag=aj.mineraft.node.body] run function animated_java:global/gu/get_entity_uuid_string
data modify entity @s data.uuids append from storage animated_java:gu out
data modify entity @s data.uuids_by_name.bone_body set from storage animated_java:gu out