execute as @e[type=minecraft:armor_stand,tag=pot_marker] unless data storage enhanced_pots disable_explosions if data entity @s {ArmorItems:[{id:"minecraft:gunpowder"}]} at @s if block ~1 ~ ~ minecraft:fire run function enhanced_pots:gunpowder/explode
execute as @e[type=minecraft:armor_stand,tag=pot_marker] unless data storage enhanced_pots disable_explosions if data entity @s {ArmorItems:[{id:"minecraft:gunpowder"}]} at @s if block ~-1 ~ ~ minecraft:fire run function enhanced_pots:gunpowder/explode
execute as @e[type=minecraft:armor_stand,tag=pot_marker] unless data storage enhanced_pots disable_explosions if data entity @s {ArmorItems:[{id:"minecraft:gunpowder"}]} at @s if block ~ ~ ~1 minecraft:fire run function enhanced_pots:gunpowder/explode
execute as @e[type=minecraft:armor_stand,tag=pot_marker] unless data storage enhanced_pots disable_explosions if data entity @s {ArmorItems:[{id:"minecraft:gunpowder"}]} at @s if block ~ ~ ~-1 minecraft:fire run function enhanced_pots:gunpowder/explode