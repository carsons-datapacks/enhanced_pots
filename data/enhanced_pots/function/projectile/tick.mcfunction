execute if data storage enhanced_pots disable_explosions run return fail
execute unless data storage enhanced_pots throwable run return fail

# remove interaction entity if not holding gunpowder pot anymore
execute as @a[tag=pot_marker_projectile_interact_owner] unless predicate enhanced_pots:holding_gunpowder_pot run function enhanced_pots:projectile/reset_interaction_range
execute as @a[tag=pot_marker_projectile_interact_owner] unless predicate enhanced_pots:holding_gunpowder_pot run tag @s remove pot_marker_projectile_interact_owner

# summon interaction entity if holding gunpowder pot
execute as @a[tag=!pot_marker_projectile_interact_owner] if predicate enhanced_pots:holding_gunpowder_pot at @s run function enhanced_pots:projectile/summon_interaction
execute as @a[tag=!pot_marker_projectile_interact_owner] if predicate enhanced_pots:holding_gunpowder_pot store result score @s enhanced_pots.projectile_reset_interaction_range at @s run attribute @s player.entity_interaction_range get
execute as @a[tag=!pot_marker_projectile_interact_owner] if predicate enhanced_pots:holding_gunpowder_pot run tag @s add pot_marker_projectile_interact_owner

# remove has_owner tag for checks
tag @e[type=minecraft:interaction,tag=pot_projectile_interact] remove pot_projectile_interact_has_owner

# update interaction entity position to stay in front of players eyes, far enough that it doesn't prevent other interactions (break/place, hit mob, etc.)
execute as @a[tag=pot_marker_projectile_interact_owner] run attribute @s player.entity_interaction_range base set 4.5
execute as @a[tag=pot_marker_projectile_interact_owner] run function enhanced_pots:projectile/tick_interaction

# destroy interactions that don't have an owner anymore
kill @e[type=minecraft:interaction,tag=pot_projectile_interact,tag=!pot_projectile_interact_has_owner]

execute as @e[type=minecraft:item_display,tag=pot_projectile_item_display] at @s rotated as @s run tp @s ~ ~ ~ ~3 ~3
execute as @e[type=minecraft:item_display,tag=pot_projectile_item_display] unless predicate enhanced_pots:riding_snowball at @s run function enhanced_pots:projectile/explode with entity @s item
execute as @e[type=minecraft:item_display,tag=pot_projectile_item_display] unless predicate enhanced_pots:riding_snowball run kill @s