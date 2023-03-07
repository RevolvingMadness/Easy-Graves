execute as @a[distance=..10] at @s run function easy-graves:grave/retrieve/loop/loop
kill @e[type=armor_stand,tag=grave-display,limit=1,sort=nearest]
kill @s