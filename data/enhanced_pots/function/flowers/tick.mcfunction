execute as @e[type=minecraft:armor_stand,tag=pot_marker,tag=pot_marker_item_set,tag=!pot_marker_flower] if predicate enhanced_pots:tall_flowers at @s run function enhanced_pots:flowers/setup_tall_flower with entity @s ArmorItems[0]
execute as @e[type=minecraft:armor_stand,tag=pot_marker,tag=pot_marker_item_set,tag=!pot_marker_flower] if predicate enhanced_pots:small_flowers at @s run function enhanced_pots:flowers/setup_small_flower with entity @s ArmorItems[0]
execute as @e[type=minecraft:armor_stand,tag=pot_marker,tag=pot_marker_flower] unless predicate enhanced_pots:tall_flowers unless predicate enhanced_pots:small_flowers run tag @s remove pot_marker_flower

execute as @e[type=minecraft:block_display,tag=pot_contents_flower] at @s run function enhanced_pots:flowers/tick_flower_display with entity @s block_state