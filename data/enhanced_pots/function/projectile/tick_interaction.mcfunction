execute store result score @s enhanced_pots.projectile_owner_0 run data get entity @s UUID[0]
execute store result score @s enhanced_pots.projectile_owner_1 run data get entity @s UUID[1]
execute store result score @s enhanced_pots.projectile_owner_2 run data get entity @s UUID[2]
execute store result score @s enhanced_pots.projectile_owner_3 run data get entity @s UUID[3]

# move interaction entity in front of player's crosshair, but far enough away to not prevent other interactions
execute at @s as @e[type=minecraft:interaction,tag=pot_projectile_interact] if score @s enhanced_pots.projectile_owner_0 = @p enhanced_pots.projectile_owner_0 if score @s enhanced_pots.projectile_owner_1 = @p enhanced_pots.projectile_owner_1 if score @s enhanced_pots.projectile_owner_2 = @p enhanced_pots.projectile_owner_2 if score @s enhanced_pots.projectile_owner_3 = @p enhanced_pots.projectile_owner_3 run tag @s add pot_projectile_interact_has_owner
execute at @s as @e[type=minecraft:interaction,tag=pot_projectile_interact] if score @s enhanced_pots.projectile_owner_0 = @p enhanced_pots.projectile_owner_0 if score @s enhanced_pots.projectile_owner_1 = @p enhanced_pots.projectile_owner_1 if score @s enhanced_pots.projectile_owner_2 = @p enhanced_pots.projectile_owner_2 if score @s enhanced_pots.projectile_owner_3 = @p enhanced_pots.projectile_owner_3 rotated as @p positioned ~ ~1.55 ~ positioned ^ ^ ^4.5 run tp @s ~ ~ ~ ~ ~

execute as @e[type=minecraft:interaction,tag=pot_projectile_interact] if data entity @s interaction run function enhanced_pots:projectile/handle_interact