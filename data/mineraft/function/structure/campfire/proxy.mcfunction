scoreboard players operation #cf.id mr.data = @s mr.id
$execute as @e[type=block_display,tag=mr.p.proxy,distance=..3] if score @s mr.id = #cf.id mr.data run data merge entity @s {block_state:{Name:"minecraft:campfire",Properties:{lit:"$(lit)"}}}
