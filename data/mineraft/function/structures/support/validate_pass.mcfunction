scoreboard players add #pass_count mr.data 1
say Validation pass
execute store result storage mineraft:debug pass_num int 1 run scoreboard players get #pass_count mr.data
function mineraft:structures/support/debug_pass with storage mineraft:debug

scoreboard players set #validated_any mr.data 0

execute as @e[type=item_display,tag=mr.platform_display,tag=mr.needs_validation] at @s run function mineraft:structures/support/check_valid_support

execute if score #validated_any mr.data matches 1 if score #pass_count mr.data matches ..10 run function mineraft:structures/support/validate_pass
execute if score #pass_count mr.data matches 11.. run say Max passes reached