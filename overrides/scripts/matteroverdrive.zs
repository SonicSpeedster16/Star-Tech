#Name: matteroverdrive.zs
#Author: SonicSpeedster16
#Description: Add missing recipes for items from Matter Overdrive
#Written for use in the Star Tech modpack: https://www.curseforge.com/minecraft/modpacks/star-tech

print("==== Initializing matteroverdrive.zs ====");

# Industrial Glass
recipes.addShaped("Matter Overdrive Industrial Glass",
<matteroverdrive:industrial_glass> * 3, [
  [<matteroverdrive:tritanium_plate>, null, <matteroverdrive:tritanium_plate>],
  [<minecraft:glass>, <minecraft:glass>, <minecraft:glass>],
  [<matteroverdrive:tritanium_plate>, null, <matteroverdrive:tritanium_plate>]
]);
mods.thermalexpansion.InductionSmelter.addRecipe(<matteroverdrive:industrial_glass>, <matteroverdrive:tritanium_ingot>, <minecraft:glass>, 8000);

# Microwave
recipes.addShaped("Microwave",
<matteroverdrive:microwave>, [
  [null, null, null],
  [<matteroverdrive:tritanium_plate>, <minecraft:glass_pane>, <matteroverdrive:tritanium_plate>],
  [null, null, null]
]);

/*~~~~~~~~~~~~~~~
Tritanium Crates:
~~~~~~~~~~~~~~~~*/
recipes.addShaped("White Tritanium Crate",
<matteroverdrive:tritanium_crate_white>, [
  [<ore:dyeWhite>, null, <ore:dyeWhite>],
  [<matteroverdrive:tritanium_plate>, <minecraft:chest>, <matteroverdrive:tritanium_plate>],
  [null, <matteroverdrive:tritanium_plate>, null]
]);
recipes.addShaped("Dye Tritanium Crate White",
<matteroverdrive:tritanium_crate_white>, [
  [<ore:dyeWhite>, null, <ore:dyeWhite>],
  [null, <matteroverdrive:tritanium_crate>, null],
  [null, null, null]
]);

recipes.addShaped("Orange Tritanium Crate",
<matteroverdrive:tritanium_crate_orange>, [
  [<ore:dyeOrange>, null, <ore:dyeOrange>],
  [<matteroverdrive:tritanium_plate>, <minecraft:chest>, <matteroverdrive:tritanium_plate>],
  [null, <matteroverdrive:tritanium_plate>, null]
]);
recipes.addShaped("Dye Tritanium Crate Orange",
<matteroverdrive:tritanium_crate_orange>, [
  [<ore:dyeOrange>, null, <ore:dyeOrange>],
  [null, <matteroverdrive:tritanium_crate>, null],
  [null, null, null]
]);

recipes.addShaped("Magenta Tritanium Crate",
<matteroverdrive:tritanium_crate_magenta>, [
  [<ore:dyeMagenta>, null, <ore:dyeMagenta>],
  [<matteroverdrive:tritanium_plate>, <minecraft:chest>, <matteroverdrive:tritanium_plate>],
  [null, <matteroverdrive:tritanium_plate>, null]
]);
recipes.addShaped("Dye Tritanium Crate Magenta",
<matteroverdrive:tritanium_crate_magenta>, [
  [<ore:dyeMagenta>, null, <ore:dyeMagenta>],
  [null, <matteroverdrive:tritanium_crate>, null],
  [null, null, null]
]);

recipes.addShaped("Light Blue Tritanium Crate",
<matteroverdrive:tritanium_crate_light_blue>, [
  [<ore:dyeLightBlue>, null, <ore:dyeLightBlue>],
  [<matteroverdrive:tritanium_plate>, <minecraft:chest>, <matteroverdrive:tritanium_plate>],
  [null, <matteroverdrive:tritanium_plate>, null]
]);
recipes.addShaped("Dye Tritanium Crate Light Blue",
<matteroverdrive:tritanium_crate_light_blue>, [
  [<ore:dyeLightBlue>, null, <ore:dyeLightBlue>],
  [null, <matteroverdrive:tritanium_crate>, null],
  [null, null, null]
]);

recipes.remove(<matteroverdrive:tritanium_crate_yellow>);
recipes.addShaped("Yellow Tritanium Crate",
<matteroverdrive:tritanium_crate_yellow>, [
  [<ore:dyeYellow>, null, <ore:dyeYellow>],
  [<matteroverdrive:tritanium_plate>, <minecraft:chest>, <matteroverdrive:tritanium_plate>],
  [null, <matteroverdrive:tritanium_plate>, null]
]);
recipes.addShaped("Dye Tritanium Crate Yellow",
<matteroverdrive:tritanium_crate_yellow>, [
  [<ore:dyeYellow>, null, <ore:dyeYellow>],
  [null, <matteroverdrive:tritanium_crate>, null],
  [null, null, null]
]);

recipes.addShaped("Lime Tritanium Crate",
<matteroverdrive:tritanium_crate_lime>, [
  [<ore:dyeLime>, null, <ore:dyeLime>],
  [<matteroverdrive:tritanium_plate>, <minecraft:chest>, <matteroverdrive:tritanium_plate>],
  [null, <matteroverdrive:tritanium_plate>, null]
]);
recipes.addShaped("Dye Tritanium Crate Lime",
<matteroverdrive:tritanium_crate_lime>, [
  [<ore:dyeLime>, null, <ore:dyeLime>],
  [null, <matteroverdrive:tritanium_crate>, null],
  [null, null, null]
]);

recipes.addShaped("Pink Tritanium Crate",
<matteroverdrive:tritanium_crate_pink>, [
  [<ore:dyePink>, null, <ore:dyePink>],
  [<matteroverdrive:tritanium_plate>, <minecraft:chest>, <matteroverdrive:tritanium_plate>],
  [null, <matteroverdrive:tritanium_plate>, null]
]);
recipes.addShaped("Dye Tritanium Crate Pink",
<matteroverdrive:tritanium_crate_pink>, [
  [<ore:dyePink>, null, <ore:dyePink>],
  [null, <matteroverdrive:tritanium_crate>, null],
  [null, null, null]
]);

recipes.addShaped("Gray Tritanium Crate",
<matteroverdrive:tritanium_crate_gray>, [
  [<ore:dyeGray>, null, <ore:dyeGray>],
  [<matteroverdrive:tritanium_plate>, <minecraft:chest>, <matteroverdrive:tritanium_plate>],
  [null, <matteroverdrive:tritanium_plate>, null]
]);
recipes.addShaped("Dye Tritanium Crate Gray",
<matteroverdrive:tritanium_crate_gray>, [
  [<ore:dyeGray>, null, <ore:dyeGray>],
  [null, <matteroverdrive:tritanium_crate>, null],
  [null, null, null]
]);

recipes.addShaped("Light Gray Tritanium Crate",
<matteroverdrive:tritanium_crate_silver>, [
  [<ore:dyeLightGray>, null, <ore:dyeLightGray>],
  [<matteroverdrive:tritanium_plate>, <minecraft:chest>, <matteroverdrive:tritanium_plate>],
  [null, <matteroverdrive:tritanium_plate>, null]
]);
recipes.addShaped("Dye Tritanium Crate Light Gray",
<matteroverdrive:tritanium_crate_silver>, [
  [<ore:dyeLightGray>, null, <ore:dyeLightGray>],
  [null, <matteroverdrive:tritanium_crate>, null],
  [null, null, null]
]);

recipes.addShaped("Cyan Tritanium Crate",
<matteroverdrive:tritanium_crate_cyan>, [
  [<ore:dyeCyan>, null, <ore:dyeCyan>],
  [<matteroverdrive:tritanium_plate>, <minecraft:chest>, <matteroverdrive:tritanium_plate>],
  [null, <matteroverdrive:tritanium_plate>, null]
]);
recipes.addShaped("Dye Tritanium Crate Cyan",
<matteroverdrive:tritanium_crate_cyan>, [
  [<ore:dyeCyan>, null, <ore:dyeCyan>],
  [null, <matteroverdrive:tritanium_crate>, null],
  [null, null, null]
]);

recipes.addShaped("Purple Tritanium Crate",
<matteroverdrive:tritanium_crate_purple>, [
  [<ore:dyePurple>, null, <ore:dyePurple>],
  [<matteroverdrive:tritanium_plate>, <minecraft:chest>, <matteroverdrive:tritanium_plate>],
  [null, <matteroverdrive:tritanium_plate>, null]
]);
recipes.addShaped("Dye Tritanium Crate Purple",
<matteroverdrive:tritanium_crate_purple>, [
  [<ore:dyePurple>, null, <ore:dyePurple>],
  [null, <matteroverdrive:tritanium_crate>, null],
  [null, null, null]
]);

recipes.addShaped("Blue Tritanium Crate",
<matteroverdrive:tritanium_crate_blue>, [
  [<ore:dyeBlue>, null, <ore:dyeBlue>],
  [<matteroverdrive:tritanium_plate>, <minecraft:chest>, <matteroverdrive:tritanium_plate>],
  [null, <matteroverdrive:tritanium_plate>, null]
]);
recipes.addShaped("Dye Tritanium Crate Blue",
<matteroverdrive:tritanium_crate_blue>, [
  [<ore:dyeBlue>, null, <ore:dyeBlue>],
  [null, <matteroverdrive:tritanium_crate>, null],
  [null, null, null]
]);

recipes.addShaped("Brown Tritanium Crate",
<matteroverdrive:tritanium_crate_brown>, [
  [<ore:dyeBrown>, null, <ore:dyeBrown>],
  [<matteroverdrive:tritanium_plate>, <minecraft:chest>, <matteroverdrive:tritanium_plate>],
  [null, <matteroverdrive:tritanium_plate>, null]
]);
recipes.addShaped("Dye Tritanium Crate Brown",
<matteroverdrive:tritanium_crate_brown>, [
  [<ore:dyeBrown>, null, <ore:dyeBrown>],
  [null, <matteroverdrive:tritanium_crate>, null],
  [null, null, null]
]);

recipes.addShaped("Green Tritanium Crate",
<matteroverdrive:tritanium_crate_green>, [
  [<ore:dyeGreen>, null, <ore:dyeGreen>],
  [<matteroverdrive:tritanium_plate>, <minecraft:chest>, <matteroverdrive:tritanium_plate>],
  [null, <matteroverdrive:tritanium_plate>, null]
]);
recipes.addShaped("Dye Tritanium Crate Green",
<matteroverdrive:tritanium_crate_green>, [
  [<ore:dyeGreen>, null, <ore:dyeGreen>],
  [null, <matteroverdrive:tritanium_crate>, null],
  [null, null, null]
]);

recipes.addShaped("Red Tritanium Crate",
<matteroverdrive:tritanium_crate_red>, [
  [<ore:dyeRed>, null, <ore:dyeRed>],
  [<matteroverdrive:tritanium_plate>, <minecraft:chest>, <matteroverdrive:tritanium_plate>],
  [null, <matteroverdrive:tritanium_plate>, null]
]);
recipes.addShaped("Dye Tritanium Crate Red",
<matteroverdrive:tritanium_crate_red>, [
  [<ore:dyeRed>, null, <ore:dyeRed>],
  [null, <matteroverdrive:tritanium_crate>, null],
  [null, null, null]
]);

recipes.addShaped("Black Tritanium Crate",
<matteroverdrive:tritanium_crate_black>, [
  [<ore:dyeBlack>, null, <ore:dyeBlack>],
  [<matteroverdrive:tritanium_plate>, <minecraft:chest>, <matteroverdrive:tritanium_plate>],
  [null, <matteroverdrive:tritanium_plate>, null]
]);
recipes.addShaped("Dye Tritanium Crate Black",
<matteroverdrive:tritanium_crate_black>, [
  [<ore:dyeBlack>, null, <ore:dyeBlack>],
  [null, <matteroverdrive:tritanium_crate>, null],
  [null, null, null]
]);

/*~~~~~~~~~~~~
Color Modules:
~~~~~~~~~~~~~~*/
recipes.addShaped("Red Color Module",
<matteroverdrive:weapon_module_color>, [
  [<matteroverdrive:tritanium_plate>, <ore:dyeRed>, <matteroverdrive:tritanium_plate>],
]);

recipes.addShaped("Green Color Module",
<matteroverdrive:weapon_module_color:1>, [
  [<matteroverdrive:tritanium_plate>, <ore:dyeGreen>, <matteroverdrive:tritanium_plate>],
]);

recipes.addShaped("Blue Color Module",
<matteroverdrive:weapon_module_color:2>, [
  [<matteroverdrive:tritanium_plate>, <ore:dyeBlue>, <matteroverdrive:tritanium_plate>],
]);

recipes.addShaped("Brown Color Module",
<matteroverdrive:weapon_module_color:3>, [
  [<matteroverdrive:tritanium_plate>, <ore:dyeBrown>, <matteroverdrive:tritanium_plate>],
]);

recipes.addShaped("Pink Color Module",
<matteroverdrive:weapon_module_color:4>, [
  [<matteroverdrive:tritanium_plate>, <ore:dyePink>, <matteroverdrive:tritanium_plate>],
]);

recipes.addShaped("Sky Blue Color Module",
<matteroverdrive:weapon_module_color:5>, [
  [<matteroverdrive:tritanium_plate>, <ore:dyeLightBlue>, <matteroverdrive:tritanium_plate>],
]);

recipes.addShaped("Gold Color Module",
<matteroverdrive:weapon_module_color:6>, [
  [<matteroverdrive:tritanium_plate>, <ore:dyeYellow>, <matteroverdrive:tritanium_plate>],
]);

recipes.addShaped("Lime Color Module",
<matteroverdrive:weapon_module_color:7>, [
  [<matteroverdrive:tritanium_plate>, <ore:dyeLime>, <matteroverdrive:tritanium_plate>],
]);

recipes.addShaped("Black Color Module",
<matteroverdrive:weapon_module_color:8>, [
  [<matteroverdrive:tritanium_plate>, <ore:dyeBlack>, <matteroverdrive:tritanium_plate>],
]);

recipes.addShaped("Gray Color Module",
<matteroverdrive:weapon_module_color:9>, [
  [<matteroverdrive:tritanium_plate>, <ore:dyeGray>, <matteroverdrive:tritanium_plate>],
]);

print("==== Initialized matteroverdrive.zs ====");
