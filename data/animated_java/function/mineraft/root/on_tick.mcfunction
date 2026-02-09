
execute unless entity @s[tag=aj.mineraft.root] run return 0
execute if entity @s[tag=aj.mineraft.animation.steve_swim_idle.playing] run function animated_java:mineraft/animations/steve_swim_idle/zzz/on_tick
execute if entity @s[tag=aj.mineraft.animation.steve_attack_charge.playing] run function animated_java:mineraft/animations/steve_attack_charge/zzz/on_tick
execute on passengers run rotate @s ~ ~