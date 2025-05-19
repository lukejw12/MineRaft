execute if entity @s[tag=!breaking] if predicate mineraft:platform/if_circle_clear run tag @s add breaking
execute if entity @s[tag=!breaking] unless block ~ ~ ~ #possible_platform_center run tag @s add breaking
execute if entity @s[tag=!breaking] if predicate mineraft:platform/if_no_supports run tag @s add breaking

execute as @s[tag=breaking] run function mineraft:raft_decor/platform/wooden_platform/destroy
