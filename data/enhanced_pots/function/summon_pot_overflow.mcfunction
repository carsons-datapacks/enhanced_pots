data modify storage enhanced_pots:overflow_pot_data item set value {components:[]}
data modify storage enhanced_pots:overflow_pot_data item merge from entity @s ArmorItems[0]
$data modify storage enhanced_pots:overflow_pot_data item.count set value $(count)
function enhanced_pots:summon_pot_inventory with storage enhanced_pots:overflow_pot_data item