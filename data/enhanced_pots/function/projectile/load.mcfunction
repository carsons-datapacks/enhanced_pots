# the original interaction distance the player had before selecting a gunpowder pot
scoreboard objectives add enhanced_pots.projectile_reset_interaction_range dummy

# the UUID of the player holding a gunpowder pot
scoreboard objectives add enhanced_pots.projectile_owner_0 dummy
scoreboard objectives add enhanced_pots.projectile_owner_1 dummy
scoreboard objectives add enhanced_pots.projectile_owner_2 dummy
scoreboard objectives add enhanced_pots.projectile_owner_3 dummy

# the UUID of the player interacting with a `interaction` entity
scoreboard objectives add enhanced_pots.projectile_interact_0 dummy
scoreboard objectives add enhanced_pots.projectile_interact_1 dummy
scoreboard objectives add enhanced_pots.projectile_interact_2 dummy
scoreboard objectives add enhanced_pots.projectile_interact_3 dummy

# start/end positions used to construct a motion vector
scoreboard objectives add enhanced_pots.projectile_pos1_x dummy
scoreboard objectives add enhanced_pots.projectile_pos1_y dummy
scoreboard objectives add enhanced_pots.projectile_pos1_z dummy
scoreboard objectives add enhanced_pots.projectile_pos2_x dummy
scoreboard objectives add enhanced_pots.projectile_pos2_y dummy
scoreboard objectives add enhanced_pots.projectile_pos2_z dummy

scoreboard objectives add enhanced_pots.projectile_explosion_radius dummy

# remove any previous projectile interaction entities
kill @e[type=minecraft:interaction,tag=pot_projectile_interact]
tag @a[tag=pot_marker_projectile_interact_owner] remove pot_marker_projectile_interact_owner