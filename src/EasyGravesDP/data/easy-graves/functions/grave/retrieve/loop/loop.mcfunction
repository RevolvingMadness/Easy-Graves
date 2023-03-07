# tellraw @a {"nbt":"ArmorItems[3].tag.Items[0].id","entity":"@e[type=armor_stand,tag=grave-display,limit=1,sort=nearest]"}
summon item ~ ~ ~ {Item: {id: "minecraft:stone", Count: 1b, tag: {null: 1b}}, Tags: ["extra-item"]}
execute as @e[type=item,tag=extra-item,limit=1,sort=nearest] run data modify entity @s Item set from entity @e[type=armor_stand,tag=grave-display,limit=1,sort=nearest] ArmorItems[3].tag.Items[0]
execute as @e[type=item,tag=extra-item,limit=1,sort=nearest] run tag @s remove extra-item

data remove entity @e[type=armor_stand,tag=grave-display,limit=1,sort=nearest] ArmorItems[3].tag.Items[0]
execute if data entity @e[type=armor_stand,tag=grave-display,limit=1,sort=nearest] ArmorItems[3].tag.Items[0] run function easy-graves:grave/retrieve/loop/loop