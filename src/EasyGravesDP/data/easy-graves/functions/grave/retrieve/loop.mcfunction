# particle crit
scoreboard players add @s retrieve_distance 1

execute unless entity @e[type=interaction,tag=grave-interaction,distance=..1,limit=1,sort=nearest] unless score @s retrieve_distance matches 10.. positioned ^ ^ ^1 run function easy-graves:grave/retrieve/loop

execute as @e[type=interaction,tag=grave-interaction,distance=..1,limit=1,sort=nearest] at @s run function easy-graves:grave/retrieve/found