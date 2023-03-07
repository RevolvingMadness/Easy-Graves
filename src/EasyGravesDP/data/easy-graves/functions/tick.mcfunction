execute as @a[scores={death=1..}] at @s run function easy-graves:grave/spawn
clear @a stone{null: 1b}
scoreboard players reset @a death
scoreboard players reset @a sneak