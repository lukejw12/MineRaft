data modify storage mineraft:foundations display_type set from entity @s data.foundation_type
execute unless data storage mineraft:foundations {held_type:"",display_type:""} store success score #different mr.data run data modify storage mineraft:foundations held_type set from storage mineraft:foundations display_type
execute if score #different mr.data matches 1 run kill @s