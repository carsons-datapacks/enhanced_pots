execute as @e[type=minecraft:armor_stand,tag=pot_marker] if data entity @s {ArmorItems:[{id:"minecraft:gunpowder"}]} at @s if block ~1 ~ ~ minecraft:fire run function enhanced_pots:gunpowder/explode
execute as @e[type=minecraft:armor_stand,tag=pot_marker] if data entity @s {ArmorItems:[{id:"minecraft:gunpowder"}]} at @s if block ~-1 ~ ~ minecraft:fire run function enhanced_pots:gunpowder/explode
execute as @e[type=minecraft:armor_stand,tag=pot_marker] if data entity @s {ArmorItems:[{id:"minecraft:gunpowder"}]} at @s if block ~ ~ ~1 minecraft:fire run function enhanced_pots:gunpowder/explode
execute as @e[type=minecraft:armor_stand,tag=pot_marker] if data entity @s {ArmorItems:[{id:"minecraft:gunpowder"}]} at @s if block ~ ~ ~-1 minecraft:fire run function enhanced_pots:gunpowder/explode