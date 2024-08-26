summon minecraft:interaction ~ ~ ~ {width: 0.1, height: 0.1, Tags: ["pot_projectile_interact"]}

execute store result score @n[type=minecraft:interaction,tag=pot_projectile_interact] enhanced_pots.projectile_owner_0 run data get entity @s UUID[0]
execute store result score @n[type=minecraft:interaction,tag=pot_projectile_interact] enhanced_pots.projectile_owner_1 run data get entity @s UUID[1]
execute store result score @n[type=minecraft:interaction,tag=pot_projectile_interact] enhanced_pots.projectile_owner_2 run data get entity @s UUID[2]
execute store result score @n[type=minecraft:interaction,tag=pot_projectile_interact] enhanced_pots.projectile_owner_3 run data get entity @s UUID[3]