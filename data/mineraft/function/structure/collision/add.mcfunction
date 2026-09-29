$data modify storage mineraft:tmp b set value {o:$(o),b:"$(b)",k:"$(k)"}
$function mineraft:structure/collision/add_kind {k:"$(k)"}
data modify entity @s data.mr.blocks append from storage mineraft:tmp b
