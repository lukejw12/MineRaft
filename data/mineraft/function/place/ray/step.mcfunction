execute if block ~ ~ ~ #mineraft:raft/ray_stop run return run function mineraft:place/ray/hit
scoreboard players remove #ray.n mr.data 1
execute if score #ray.n mr.data matches 1.. positioned ^ ^ ^0.1 run function mineraft:place/ray/step
