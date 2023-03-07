execute align xyz run summon armor_stand ~.5 ~-1.19 ~.5 {ArmorItems: [{}, {}, {}, {id: "minecraft:mossy_cobblestone", Count: 1b, tag: {Items: [], CustomModelData: 1}}], Tags: ["grave", "grave-display"], Marker: 1b, NoGravity: 1b, Invulnerable: 1b, Invisible: 1b}
execute align xyz run summon interaction ~.5 ~ ~.5 {response:1b, Tags:["grave", "grave-interaction"]}

execute as @e[type=item,distance=..2] at @s run data modify entity @e[type=armor_stand,tag=grave-display,limit=1,sort=nearest] ArmorItems[3].tag.Items append from entity @s Item
execute as @e[type=item,distance=..2] at @s run kill @s