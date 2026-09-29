scoreboard players operation #t.d mr.data = #t.bx mr.data
scoreboard players operation #t.d mr.data -= #grid.ox mr.data
scoreboard players add #t.d mr.data 1
scoreboard players operation #t.d mr.data %= #3 mr.const
scoreboard players operation #t.cx mr.data = #t.bx mr.data
scoreboard players operation #t.cx mr.data -= #t.d mr.data
scoreboard players add #t.cx mr.data 1
scoreboard players operation #t.d mr.data = #t.bz mr.data
scoreboard players operation #t.d mr.data -= #grid.oz mr.data
scoreboard players add #t.d mr.data 1
scoreboard players operation #t.d mr.data %= #3 mr.const
scoreboard players operation #t.cz mr.data = #t.bz mr.data
scoreboard players operation #t.cz mr.data -= #t.d mr.data
scoreboard players add #t.cz mr.data 1
