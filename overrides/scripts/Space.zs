#Name: Space.zs
#Author: SonicSpeedster16
#Description: Various changes related to space travel and items
#Written for use in the Star Tech modpack: https://www.curseforge.com/minecraft/modpacks/star-tech

print("==== Initializing Space.zs ====");

# Make the dungeon locater obtainable in Mars Treasure chests
mods.GalacticraftTweaker.addDungeonLoot(2, <galacticraftcore:dungeonfinder>);

# Make Anti-Rads (a lot) less complicated to obtain
recipes.remove(<extraplanets:anti_radiation>);
brewing.addBrew(<minecraft:potion>.withTag({Potion: "minecraft:awkward"}), [<minecraft:coal:1>], <extraplanets:anti_radiation:0>);

# Change the Advanced Fuel Loader recipe to use compressed nickel
recipes.remove(<extraplanets:advanced_fuel_loader>);
recipes.addShaped(<extraplanets:advanced_fuel_loader>, [
  [<extraplanets:tier5_items:6>, <extraplanets:tier5_items:6>, <extraplanets:tier5_items:6>],
  [<extraplanets:tier5_items:6>, <galacticraftcore:fuel_loader>, <extraplanets:tier5_items:6>],
  [<ore:ingotPalladium>, <extraplanets:tier5_items:8>, <ore:ingotPalladium>]
]);

# Fix the Tier 1 Battery recipe to use any lead ingot
recipes.remove(<extraplanets:electric_parts>);
recipes.addShaped(<extraplanets:electric_parts>, [
  [<ore:ingotLead>, <galacticraftplanets:item_basic_mars:3>, <ore:ingotLead>],
  [<galacticraftplanets:item_basic_mars:3>, <ore:ingotLead>, <galacticraftplanets:item_basic_mars:3>],
  [<ore:ingotLead>, <galacticraftplanets:item_basic_mars:3>, <ore:ingotLead>]
]);

# Tier 2 Battery should be craftable using Tier 1 Battery
recipes.remove(<extraplanets:electric_parts:1>);
recipes.addShaped(<extraplanets:electric_parts:1>, [
  [<ore:compressedDesh>, <extraplanets:electric_parts>, <ore:compressedDesh>],
  [<extraplanets:electric_parts>, <ore:compressedDesh>, <extraplanets:electric_parts>],
  [<ore:compressedDesh>, <extraplanets:electric_parts>, <ore:compressedDesh>]
]);

# Fix the Atomic Battery recipe to use any lead ingot
recipes.remove(<galacticraftplanets:atomic_battery>);
recipes.addShaped(<galacticraftplanets:atomic_battery>, [
  [<ore:ingotLead>, <ore:ingotLead>, <ore:ingotLead>],
  [<ore:ingotLead>, <galacticraftplanets:basic_item_venus:2>, <ore:ingotLead>],
  [<ore:ingotLead>, <ore:ingotLead>, <ore:ingotLead>]
]);

# Modify the Powered Launch Pad recipe
recipes.remove(<extraplanets:advanced_launch_pad:3>);
recipes.addShaped(<extraplanets:advanced_launch_pad:3> * 5, [
  [<extraplanets:tier11_items:6>, <extraplanets:tier11_items:6>, <extraplanets:tier11_items:6>],
  [<ore:blockDarkIron>, <ore:blockDarkIron>, <ore:blockDarkIron>],
  [<ore:ingotDarkIron>, <ore:ingotDarkIron>, <ore:ingotDarkIron>]
]);

# Make the compressed platinum recipe use Thermal's platinum ingot
mods.GalacticraftTweaker.removeCompressorRecipe(<extraplanets:tier11_items:6>); 
mods.GalacticraftTweaker.addCompressorShapelessRecipe(<extraplanets:tier11_items:6>,<thermalfoundation:material:134>, <thermalfoundation:material:134>, <thermalfoundation:material:134>, <thermalfoundation:material:134>, <thermalfoundation:material:134>, <thermalfoundation:material:134>, null, null, null);

# Make the compressed nickel recipe use Thermal's nickel ingot
mods.GalacticraftTweaker.removeCompressorRecipe(<extraplanets:tier5_items:6>);
mods.GalacticraftTweaker.addCompressorShapelessRecipe(<extraplanets:tier5_items:6>,<thermalfoundation:material:133>, <thermalfoundation:material:133>, null, null, null, null, null, null, null);

# Make space suits upgradable to the next tier
recipes.addShaped(<extraplanets:tier2_space_suit_helmet>, [
  [<extraplanets:tier2_radiation_layer>, <extraplanets:tier2_armor_layer>, <extraplanets:tier2_pressure_layer>],
  [<extraplanets:tier2_radiation_layer>, <extraplanets:tier1_space_suit_helmet>, <extraplanets:tier2_pressure_layer>],
  [<extraplanets:tier2_radiation_layer>, <extraplanets:tier2_armor_layer>, <extraplanets:tier2_pressure_layer>]
]);
recipes.addShaped(<extraplanets:tier2_space_suit_chest>, [
  [<extraplanets:tier2_radiation_layer>, <extraplanets:tier2_armor_layer>, <extraplanets:tier2_pressure_layer>],
  [<extraplanets:tier2_radiation_layer>, <extraplanets:tier1_space_suit_chest>, <extraplanets:tier2_pressure_layer>],
  [<extraplanets:tier2_radiation_layer>, <extraplanets:tier2_armor_layer>, <extraplanets:tier2_pressure_layer>]
]);
recipes.addShaped(<extraplanets:tier2_space_suit_jetpack_chest>, [
  [<galacticraftcore:battery>, <galacticraftcore:battery>, <galacticraftcore:battery>],
  [<extraplanets:tier4_items>, <extraplanets:tier1_space_suit_jetpack_chest:100>, <extraplanets:tier4_items>],
  [<galacticraftcore:battery>, <galacticraftcore:battery>, <galacticraftcore:battery>]
]);
recipes.addShaped(<extraplanets:tier2_space_suit_legings>, [
  [<extraplanets:tier2_radiation_layer>, <extraplanets:tier2_armor_layer>, <extraplanets:tier2_pressure_layer>],
  [<extraplanets:tier2_radiation_layer>, <extraplanets:tier1_space_suit_legings>, <extraplanets:tier2_pressure_layer>],
  [<extraplanets:tier2_radiation_layer>, <extraplanets:tier2_armor_layer>, <extraplanets:tier2_pressure_layer>]
]);
recipes.addShaped(<extraplanets:tier2_space_suit_boots>, [
  [<extraplanets:tier2_radiation_layer>, <extraplanets:tier2_armor_layer>, <extraplanets:tier2_pressure_layer>],
  [<extraplanets:tier2_radiation_layer>, <extraplanets:tier1_space_suit_boots>, <extraplanets:tier2_pressure_layer>],
  [<extraplanets:tier2_radiation_layer>, <extraplanets:tier2_armor_layer>, <extraplanets:tier2_pressure_layer>]
]);
recipes.addShaped(<extraplanets:tier2_space_suit_gravity_boots>, [
  [null, <extraplanets:gravity_controller>, null],
  [<extraplanets:gravity_controller>, <extraplanets:tier1_space_suit_gravity_boots>, <extraplanets:gravity_controller>],
  [null, <extraplanets:gravity_controller>, null]
]);

recipes.addShaped(<extraplanets:tier3_space_suit_helmet>, [
  [<extraplanets:tier3_radiation_layer>, <extraplanets:tier3_armor_layer>, <extraplanets:tier3_pressure_layer>],
  [<extraplanets:tier3_radiation_layer>, <extraplanets:tier2_space_suit_helmet>, <extraplanets:tier3_pressure_layer>],
  [<extraplanets:tier3_radiation_layer>, <extraplanets:tier3_armor_layer>, <extraplanets:tier3_pressure_layer>]
]);
recipes.addShaped(<extraplanets:tier3_space_suit_chest>, [
  [<extraplanets:tier3_radiation_layer>, <extraplanets:tier3_armor_layer>, <extraplanets:tier3_pressure_layer>],
  [<extraplanets:tier3_radiation_layer>, <extraplanets:tier2_space_suit_chest>, <extraplanets:tier3_pressure_layer>],
  [<extraplanets:tier3_radiation_layer>, <extraplanets:tier3_armor_layer>, <extraplanets:tier3_pressure_layer>]
]);
recipes.addShaped(<extraplanets:tier3_space_suit_jetpack_chest>, [
  [<galacticraftcore:battery>, <galacticraftcore:battery>, <galacticraftcore:battery>],
  [<extraplanets:tier6_items>, <extraplanets:tier2_space_suit_jetpack_chest:100>, <extraplanets:tier6_items>],
 [<galacticraftcore:battery>, <galacticraftcore:battery>, <galacticraftcore:battery>]
]);
recipes.addShaped(<extraplanets:tier3_space_suit_legings>, [
  [<extraplanets:tier3_radiation_layer>, <extraplanets:tier3_armor_layer>, <extraplanets:tier3_pressure_layer>],
  [<extraplanets:tier3_radiation_layer>, <extraplanets:tier2_space_suit_legings>, <extraplanets:tier3_pressure_layer>],
  [<extraplanets:tier3_radiation_layer>, <extraplanets:tier3_armor_layer>, <extraplanets:tier3_pressure_layer>]
]);
recipes.addShaped(<extraplanets:tier3_space_suit_boots>, [
  [<extraplanets:tier3_radiation_layer>, <extraplanets:tier3_armor_layer>, <extraplanets:tier3_pressure_layer>],
  [<extraplanets:tier3_radiation_layer>, <extraplanets:tier2_space_suit_boots>, <extraplanets:tier3_pressure_layer>],
  [<extraplanets:tier3_radiation_layer>, <extraplanets:tier3_armor_layer>, <extraplanets:tier3_pressure_layer>]
]);
recipes.addShaped(<extraplanets:tier3_space_suit_gravity_boots>, [
  [null, <extraplanets:gravity_controller>, null],
  [<extraplanets:gravity_controller>, <extraplanets:tier2_space_suit_gravity_boots>, <extraplanets:gravity_controller>],
  [null, <extraplanets:gravity_controller>, null]
]);

recipes.addShaped(<extraplanets:tier4_space_suit_helmet>, [
  [<extraplanets:tier4_radiation_layer>, <extraplanets:tier4_armor_layer>, <extraplanets:tier4_pressure_layer>],
  [<extraplanets:tier4_radiation_layer>, <extraplanets:tier3_space_suit_helmet>, <extraplanets:tier4_pressure_layer>],
  [<extraplanets:tier4_radiation_layer>, <extraplanets:tier4_armor_layer>, <extraplanets:tier4_pressure_layer>]
]);
recipes.addShaped(<extraplanets:tier4_space_suit_chest>, [
  [<extraplanets:tier4_radiation_layer>, <extraplanets:tier4_armor_layer>, <extraplanets:tier4_pressure_layer>],
  [<extraplanets:tier4_radiation_layer>, <extraplanets:tier3_space_suit_chest>, <extraplanets:tier4_pressure_layer>],
  [<extraplanets:tier4_radiation_layer>, <extraplanets:tier4_armor_layer>, <extraplanets:tier4_pressure_layer>]
]);
recipes.addShaped(<extraplanets:tier4_space_suit_jetpack_chest>, [
  [<galacticraftcore:battery>, <galacticraftcore:battery>, <galacticraftcore:battery>],
  [<extraplanets:tier8_items>, <extraplanets:tier3_space_suit_jetpack_chest:100>, <extraplanets:tier8_items>],
  [<galacticraftcore:battery>, <galacticraftcore:battery>, <galacticraftcore:battery>]
]);
recipes.addShaped(<extraplanets:tier4_space_suit_legings>, [
  [<extraplanets:tier4_radiation_layer>, <extraplanets:tier4_armor_layer>, <extraplanets:tier4_pressure_layer>],
  [<extraplanets:tier4_radiation_layer>, <extraplanets:tier3_space_suit_legings>, <extraplanets:tier4_pressure_layer>],
  [<extraplanets:tier4_radiation_layer>, <extraplanets:tier4_armor_layer>, <extraplanets:tier4_pressure_layer>]
]);
recipes.addShaped(<extraplanets:tier4_space_suit_boots>, [
  [<extraplanets:tier4_radiation_layer>, <extraplanets:tier4_armor_layer>, <extraplanets:tier4_pressure_layer>],
  [<extraplanets:tier4_radiation_layer>, <extraplanets:tier3_space_suit_boots>, <extraplanets:tier4_pressure_layer>],
  [<extraplanets:tier4_radiation_layer>, <extraplanets:tier4_armor_layer>, <extraplanets:tier4_pressure_layer>]
]);
recipes.addShaped(<extraplanets:tier4_space_suit_gravity_boots>, [
  [null, <extraplanets:gravity_controller>, null],
  [<extraplanets:gravity_controller>, <extraplanets:tier3_space_suit_gravity_boots>, <extraplanets:gravity_controller>],
  [null, <extraplanets:gravity_controller>, null]
]);

print("==== Initialized Space.zs ====");
