scoreboard players add #pass_count mr.data 1

scoreboard players set #validated_any mr.data 0

execute as @e[type=item_display,tag=mr.platform_display,tag=mr.needs_validation] at @s run function mineraft:structures/support/validation/platform/check_valid

execute if score #validated_any mr.data matches 1 if score #pass_count mr.data matches ..10 run function mineraft:structures/support/validation/platform/validate_pass
