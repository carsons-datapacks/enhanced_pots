execute at @s run playsound minecraft:block.decorated_pot.fall block @a ~ ~ ~ 5

# get a motion vector
execute store result score @s enhanced_pots.projectile_pos1_x run data get entity @s Pos[0]
execute store result score @s enhanced_pots.projectile_pos1_y run data get entity @s Pos[1]
execute store result score @s enhanced_pots.projectile_pos1_z run data get entity @s Pos[2]

tp @s ^ ^ ^100

execute store result score @s enhanced_pots.projectile_pos2_x run data get entity @s Pos[0]
execute store result score @s enhanced_pots.projectile_pos2_y run data get entity @s Pos[1]
execute store result score @s enhanced_pots.projectile_pos2_z run data get entity @s Pos[2]

scoreboard players operation @s enhanced_pots.projectile_pos2_x -= @s enhanced_pots.projectile_pos1_x
scoreboard players operation @s enhanced_pots.projectile_pos2_y -= @s enhanced_pots.projectile_pos1_y
scoreboard players operation @s enhanced_pots.projectile_pos2_z -= @s enhanced_pots.projectile_pos1_z

execute store result storage enhanced_pots:projectile motion.x double 0.01 run scoreboard players get @s enhanced_pots.projectile_pos2_x
execute store result storage enhanced_pots:projectile motion.y double 0.01 run scoreboard players get @s enhanced_pots.projectile_pos2_y
execute store result storage enhanced_pots:projectile motion.z double 0.01 run scoreboard players get @s enhanced_pots.projectile_pos2_z

# /= 5 to match gunpowder/explode
execute store result storage enhanced_pots:projectile motion.explosion_radius double 0.2 run scoreboard players get @s enhanced_pots.projectile_explosion_radius

# summon the aligned item
execute at @s positioned ^ ^ ^-100 run function enhanced_pots:projectile/summon_projectile_rotated with storage enhanced_pots:projectile motion

tp @s ^ ^ ^-100